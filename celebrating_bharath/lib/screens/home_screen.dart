import 'package:celebrating_bharath/data/state_paths.dart';
import 'package:celebrating_bharath/widgets/video_player_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final TransformationController _transformationController =
      TransformationController();
  final GlobalKey _mapKey = GlobalKey();

  late AnimationController _animationController;
  Animation<Matrix4>? _animation;

  String? _selectedState;
  bool _showInfo = false;

  Size? _mapSize; // Store actual rendered map size

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animationController.addListener(() {
      _transformationController.value = _animation!.value;
    });

    // Wait for layout and get map size
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _updateMapSize();
    });
  }

  void _updateMapSize() {
    final box = _mapKey.currentContext?.findRenderObject() as RenderBox?;
    if (box != null) {
      setState(() {
        _mapSize = box.size;
      });
      debugPrint(
        "🗺️ Map rendered size: ${box.size.width} x ${box.size.height}",
      );
    }
  }

  // Helper: get scaled offset for pin from relative offset
  Offset _getScaledOffset(Offset relativeOffset) {
    if (_mapSize == null) return Offset.zero;
    return Offset(
      relativeOffset.dx * _mapSize!.width,
      relativeOffset.dy * _mapSize!.height,
    );
  }

  void _onTapUp(TapUpDetails details) {
    final RenderBox? box =
        _mapKey.currentContext?.findRenderObject() as RenderBox?;
    if (box == null) {
      print("❌ Map container not ready.");
      return;
    }

    final Offset localPosition = box.globalToLocal(details.globalPosition);
    print("📍 TAP OFFSET relative to map: $localPosition");

    const double tapRadius = 20.0;

    for (final entry in statePins.entries) {
      final stateName = entry.key;
      final Offset relativeOffset = entry.value['relativeOffset'] as Offset;
      final Offset pinPosition = _getScaledOffset(relativeOffset);

      if ((pinPosition - localPosition).distance <= tapRadius) {
        print("✅ Matched state: $stateName");
        _zoomToState(pinPosition);
        setState(() {
          _selectedState = stateName;
          _showInfo = true;
        });
        return;
      }
    }

    print("❌ No matching pin found.");
    setState(() {
      _selectedState = null;
      _showInfo = false;
    });
  }

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
  void dispose() {
    _animationController.dispose();
    _transformationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Celebrating Bharath")),
      body: Container(
        color: const Color(0xFFADD8E6), // Ocean Blue Background
        child: Stack(
          children: [
            GestureDetector(
              onTapUp: _onTapUp,
              child: InteractiveViewer(
                transformationController: _transformationController,
                minScale: 0.5,
                maxScale: 3.0,
                child: SizedBox(
                  key: _mapKey,
                  width: 1519,
                  height: 1773,
                  child: Stack(
                    children: [
                      SvgPicture.asset(
                        'assets/mp.svg',
                        width: 1519,
                        height: 1773,
                        fit: BoxFit.fill,
                        alignment: Alignment.topLeft,
                      ),
                      if (_mapSize != null)
                        ...statePins.entries.map((entry) {
                          final stateName = entry.key;
                          final relativeOffset =
                              entry.value['relativeOffset'] as Offset;
                          final offset = _getScaledOffset(relativeOffset);
                          return Positioned(
                            left: offset.dx - 12,
                            top: offset.dy - 24,
                            child: Opacity(
                              opacity: 1.0, // Visible pins; set to 0.0 to hide
                              child: GestureDetector(
                                onTap: () {
                                  _zoomToState(offset);
                                  setState(() {
                                    _selectedState = stateName;
                                    _showInfo = true;
                                  });
                                },
                                child: SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: const Text(
                                    '📍',
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                    ],
                  ),
                ),
              ),
            ),
            if (_showInfo && _selectedState != null)
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
                                setState(() {
                                  _showInfo = false;
                                  _selectedState = null;
                                });
                              },
                            ),
                            Text(
                              _selectedState!,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(statePins[_selectedState!]['description'] ?? ''),
                        const SizedBox(height: 10),
                        if ((statePins[_selectedState!]['videoUrl'] ?? '')
                            .isNotEmpty)
                          AspectRatio(
                            aspectRatio: 16 / 9,
                            child: VideoPlayerWidget(
                              videoUrl: statePins[_selectedState!]['videoUrl'],
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
