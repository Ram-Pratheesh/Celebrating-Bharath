import 'package:celebrating_bharath/data/state_paths.dart';
import 'package:celebrating_bharath/widgets/video_player_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:celebrating_bharath/widgets/state_providers.dart'; // adjust path accordingly

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen>
    with SingleTickerProviderStateMixin {
  final TransformationController _transformationController =
      TransformationController();

  late AnimationController _animationController;
  Animation<Matrix4>? _animation;

  // Convert relative offsets (0..1) into absolute pixel positions based on current map size
  Offset _getScaledOffset(Offset relativeOffset, Size mapSize) {
    return Offset(
      relativeOffset.dx * mapSize.width,
      relativeOffset.dy * mapSize.height,
    );
  }

  // Handle taps on the map, find if tap is within tapRadius for any state pin
  void _onTapUp(TapUpDetails details, Size mapSize) {
    final localPosition = details.localPosition;
    debugPrint("📍 TAP OFFSET relative to map: $localPosition");

    for (final entry in statePins.entries) {
      final stateName = entry.key;
      final data = entry.value;
      final Offset relativeOffset = data['relativeOffset'] as Offset;
      final double tapRadius = (data['tapRadius'] as double?) ?? 20.0;
      final Offset pinPosition = _getScaledOffset(relativeOffset, mapSize);

      if ((pinPosition - localPosition).distance <= tapRadius) {
        debugPrint("✅ Matched state: $stateName");
        _zoomToState(pinPosition);
        ref.read(selectionProvider.notifier).select(stateName);
        return;
      }
    }

    debugPrint("❌ No matching pin found.");
    ref.read(selectionProvider.notifier).clear();
  }

  // Animate zoom and pan to a specific position on the map
  void _zoomToState(Offset position) {
    const double targetScale = 2.5;
    final x = -position.dx * (targetScale - 1);
    final y = -position.dy * (targetScale - 1);

    final targetMatrix =
        Matrix4.identity()
          ..translate(x, y)
          ..scale(targetScale);

    _animation = Matrix4Tween(
      begin: _transformationController.value,
      end: targetMatrix,
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );

    _animationController.forward(from: 0);
  }

  // Animate zoom out to full map view
  void _zoomOut() {
    const double targetScale = 1.0;
    final currentMatrix = _transformationController.value;

    final targetMatrix = Matrix4.identity()..scale(targetScale);

    _animation = Matrix4Tween(begin: currentMatrix, end: targetMatrix).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );

    _animationController.forward(from: 0);
  }

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _animationController.addListener(() {
      if (_animation != null) {
        _transformationController.value = _animation!.value;
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    _transformationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final selectionState = ref.watch(selectionProvider);

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xFFADD8E6),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final mapSize = Size(constraints.maxWidth, constraints.maxHeight);
              debugPrint("🗺️ Rendered map size: $mapSize");

              return Stack(
                children: [
                  GestureDetector(
                    onTapUp: (details) => _onTapUp(details, mapSize),
                    child: InteractiveViewer(
                      transformationController: _transformationController,
                      minScale: 0.5,
                      maxScale: 3.0,
                      child: SizedBox(
                        width: mapSize.width,
                        height: mapSize.height,
                        child: Stack(
                          children: [
                            SvgPicture.asset(
                              'assets/mp.svg',
                              width: mapSize.width,
                              height: mapSize.height,
                              fit: BoxFit.fill,
                              alignment: Alignment.topLeft,
                            ),
                            // Render markers for each state
                            ...statePins.entries.map((entry) {
                              final stateName = entry.key;
                              final relativeOffset =
                                  entry.value['relativeOffset'] as Offset;
                              final offset = _getScaledOffset(
                                relativeOffset,
                                mapSize,
                              );
                              return Positioned(
                                left: offset.dx - 12,
                                top: offset.dy - 24,
                                child: Opacity(
                                  opacity: 1.0,
                                  child: GestureDetector(
                                    onTap: () {
                                      _zoomToState(offset);
                                      ref
                                          .read(selectionProvider.notifier)
                                          .select(stateName);
                                    },
                                    child: const SizedBox(
                                      width: 24,
                                      height: 24,
                                      child: Text(
                                        '📍',
                                        style: TextStyle(fontSize: 30),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Info panel shown when a state is selected
                  if (selectionState.showInfo &&
                      selectionState.selectedState != null)
                    Positioned(
                      bottom: 20,
                      left: 20,
                      right: 20,
                      child: Card(
                        elevation: 8,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.arrow_back),
                                    onPressed: () {
                                      _zoomOut();
                                      ref
                                          .read(selectionProvider.notifier)
                                          .clear();
                                    },
                                  ),
                                  // Make the state name text tappable with underline
                                  GestureDetector(
                                    onTap: () {
                                      final selected =
                                          selectionState.selectedState!;
                                      final Offset relativeOffset =
                                          statePins[selected]['relativeOffset']
                                              as Offset;
                                      final Size mapSize = Size(
                                        MediaQuery.of(context).size.width,
                                        MediaQuery.of(context).size.height,
                                      );
                                      final Offset pinPosition =
                                          _getScaledOffset(
                                            relativeOffset,
                                            mapSize,
                                          );
                                      _zoomToState(pinPosition);
                                    },
                                    child: Text(
                                      selectionState.selectedState!,
                                      style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(
                                statePins[selectionState
                                        .selectedState!]['description'] ??
                                    '',
                              ),
                              const SizedBox(height: 10),
                              if ((statePins[selectionState
                                          .selectedState!]['videoUrl'] ??
                                      '')
                                  .isNotEmpty)
                                AspectRatio(
                                  aspectRatio: 16 / 9,
                                  child: VideoPlayerWidget(
                                    videoUrl:
                                        statePins[selectionState
                                            .selectedState!]['videoUrl'],
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
