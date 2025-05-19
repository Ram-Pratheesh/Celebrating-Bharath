import 'package:celebrating_bharath/data/state_paths.dart';
import 'package:celebrating_bharath/widgets/carousel_widget.dart';
import 'package:celebrating_bharath/widgets/video_player_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:celebrating_bharath/widgets/state_providers.dart'; // adjust path accordingly
import 'package:flutter/services.dart';

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

  // Control opacity here (0.0 - 1.0)
  static const double markerOpacity = 0.0;
  static const double touchBoxOpacity =
      0.0; // >0 to visualize tap area for debug
  double currentZoomScale = 1.0;
  Offset _getScaledOffset(Offset relativeOffset, Size mapSize) {
    return Offset(
      relativeOffset.dx * mapSize.width,
      relativeOffset.dy * mapSize.height,
    );
  }

  void _onTapUp(TapUpDetails details, Size mapSize) {
    final localPosition = details.localPosition;
    debugPrint("📍 TAP OFFSET relative to map: $localPosition");

    // Only process tap if info card is NOT visible
    final selectionState = ref.read(selectionProvider);
    if (selectionState.showInfo && selectionState.selectedState != null) {
      // Ignore tap on map when info card is shown
      return;
    }

    for (final entry in statePins.entries) {
      final stateName = entry.key;
      final data = entry.value;
      final Offset relativeOffset = data['relativeOffset'] as Offset;
      final Offset pinPosition = _getScaledOffset(relativeOffset, mapSize);

      // Use relative ratios for width/height of tap area (default fallback)
      final double touchWidthRatio =
          (data['touchWidthRatio'] as double?) ?? 0.1;
      final double touchHeightRatio =
          (data['touchHeightRatio'] as double?) ?? 0.05;

      final double touchWidth = touchWidthRatio * mapSize.width;
      final double touchHeight = touchHeightRatio * mapSize.height;

      final rectLeft = pinPosition.dx - touchWidth / 2;
      final rectTop = pinPosition.dy - touchHeight / 2;
      final rect = Rect.fromLTWH(rectLeft, rectTop, touchWidth, touchHeight);

      if (rect.contains(localPosition)) {
        debugPrint("✅ Matched state: $stateName");
        debugPrint("📍 Tap at $localPosition matched state: $stateName");
        _zoomToState(pinPosition);
        ref.read(selectionProvider.notifier).select(stateName);
        return;
      }
    }

    debugPrint("❌ No matching pin found.");
    ref.read(selectionProvider.notifier).clear();
  }

  void _zoomToState(Offset position) {
    const double targetScale = 2.5;

    final double verticalOffset = 80; // smaller offset, adjust as needed

    final Offset adjustedPosition = Offset(
      position.dx,
      position.dy + verticalOffset,
    );

    final x = -adjustedPosition.dx * (targetScale - 1);
    final y = -adjustedPosition.dy * (targetScale - 1);

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

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

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
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    _animationController.dispose();
    _transformationController.dispose();
    super.dispose();
  }

  @override
  @override
  Widget build(BuildContext context) {
    final selectionState = ref.watch(selectionProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0D3B66), // Royal Blue
        centerTitle: true,
        title: const Text(
          'Celebrating Bharath',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.orange,
            fontSize: 25,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          color: const Color(0xFFADD8E6),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final mapSize = Size(constraints.maxWidth, constraints.maxHeight);
              debugPrint("🗺️ Rendered map size: $mapSize");

              final selectionState = ref.watch(selectionProvider);

              return Stack(
                children: [
                  // Zoomable map with pins (unchanged)
                  GestureDetector(
                    onTapUp: (details) {
                      if (selectionState.showInfo &&
                          selectionState.selectedState != null) {
                        _zoomOut();
                        ref.read(selectionProvider.notifier).clear();
                      } else {
                        _onTapUp(details, mapSize);
                      }
                    },
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
                            ...statePins.entries.map((entry) {
                              final stateName = entry.key;
                              final data = entry.value;
                              final relativeOffset =
                                  data['relativeOffset'] as Offset;
                              final offset = _getScaledOffset(
                                relativeOffset,
                                mapSize,
                              );

                              final double touchWidthRatio =
                                  (data['touchWidthRatio'] as double?) ?? 0.1;
                              final double touchHeightRatio =
                                  (data['touchHeightRatio'] as double?) ?? 0.05;

                              final double touchWidth =
                                  touchWidthRatio * mapSize.width;
                              final double touchHeight =
                                  touchHeightRatio * mapSize.height;

                              return Positioned(
                                left: offset.dx - touchWidth / 2,
                                top: offset.dy - touchHeight / 2,
                                width: touchWidth,
                                height: touchHeight,
                                child: GestureDetector(
                                  behavior: HitTestBehavior.translucent,
                                  onTap: () {
                                    if (!selectionState.showInfo) {
                                      _zoomToState(offset);
                                      ref
                                          .read(selectionProvider.notifier)
                                          .select(stateName);
                                    }
                                  },
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.blue.withOpacity(
                                            touchBoxOpacity,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            6,
                                          ),
                                          border: Border.all(
                                            color: Colors.blueAccent
                                                .withOpacity(
                                                  touchBoxOpacity + 0.0,
                                                ),
                                            width: 1,
                                          ),
                                        ),
                                      ),
                                      Opacity(
                                        opacity: markerOpacity,
                                        child: const SizedBox(
                                          width: 24,
                                          height: 24,
                                          child: Text(
                                            '📍',
                                            style: TextStyle(fontSize: 30),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                          ],
                        ),
                      ),
                    ),
                  ),

                  if (selectionState.showInfo &&
                      selectionState.selectedState != null) ...[
                    // Wrap carousel and info card in a Column at bottom with safe margins
                    Positioned(
                      left: 20,
                      right: 20,
                      top:
                          20, // Position carousel and info card container where you want
                      bottom: 20,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Carousel: Fixed position (no scroll)
                          SizedBox(
                            height: 250,
                            child: Builder(
                              builder: (context) {
                                final urls = List<String>.from(
                                  statePins[selectionState
                                          .selectedState!]?['imageUrls'] ??
                                      [],
                                );
                                debugPrint(
                                  'Carousel images for ${selectionState.selectedState}: $urls',
                                );
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: CarouselWidget(imageUrls: urls),
                                );
                              },
                            ),
                          ),

                          const SizedBox(
                            height: 16,
                          ), // Space between carousel and info card
                          // Info Card: Make it scrollable while keeping carousel fixed
                          Expanded(
                            // Use Expanded to take remaining space
                            child: SingleChildScrollView(
                              // Only make the info card scrollable
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 16,
                                ), // Space between carousel and info card
                                child: GestureDetector(
                                  onTap: () {}, // Absorb taps inside info card
                                  child: LayoutBuilder(
                                    builder: (context, constraints) {
                                      final selectedState =
                                          selectionState.selectedState!;
                                      final stateData =
                                          statePins[selectedState];

                                      if (stateData == null) {
                                        return const SizedBox.shrink();
                                      }

                                      final description =
                                          stateData['description'] ?? '';
                                      final videoUrl =
                                          stateData['videoUrl'] ?? '';
                                      final relativeOffset =
                                          stateData['relativeOffset']
                                              as Offset? ??
                                          Offset.zero;

                                      return Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 6,
                                              offset: Offset(0, 3),
                                            ),
                                          ],
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Row(
                                                children: [
                                                  IconButton(
                                                    icon: const Icon(
                                                      Icons.arrow_back,
                                                    ),
                                                    onPressed: () {
                                                      _zoomOut();
                                                      ref
                                                          .read(
                                                            selectionProvider
                                                                .notifier,
                                                          )
                                                          .clear();
                                                    },
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      final Size mapSize = Size(
                                                        MediaQuery.of(
                                                          context,
                                                        ).size.width,
                                                        MediaQuery.of(
                                                          context,
                                                        ).size.height,
                                                      );
                                                      final Offset pinPosition =
                                                          _getScaledOffset(
                                                            relativeOffset,
                                                            mapSize,
                                                          );
                                                      _zoomToState(pinPosition);
                                                    },
                                                    child: Text(
                                                      selectedState,
                                                      style: TextStyle(
                                                        fontSize:
                                                            selectedState ==
                                                                    'Andaman and Nicobar'
                                                                ? 14
                                                                : 20,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 10),

                                              // Description text
                                              Text(description),
                                              const SizedBox(height: 10),

                                              // Video player: only if the video URL is available
                                              if (videoUrl.isNotEmpty)
                                                AspectRatio(
                                                  aspectRatio: 16 / 9,
                                                  child: VideoPlayerWidget(
                                                    videoUrl: videoUrl,
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
