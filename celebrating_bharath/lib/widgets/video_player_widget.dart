import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:celebrating_bharath/widgets/fullscreen_video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  final String videoUrl;
  final VideoPlayerController? controller; // NEW optional param

  const VideoPlayerWidget({super.key, required this.videoUrl, this.controller});

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _controller;
  bool _isInitialized = false;
  bool _showControls = false;

  @override
  void initState() {
    super.initState();

    if (widget.controller != null) {
      _controller = widget.controller!;
      if (_controller.value.isInitialized) {
        _isInitialized = true;
      } else {
        _controller.initialize().then((_) {
          if (mounted) setState(() => _isInitialized = true);
          _controller.setLooping(true);
        });
      }
    } else {
      _controller = VideoPlayerController.network(widget.videoUrl)
        ..initialize().then((_) {
          if (mounted) setState(() => _isInitialized = true);
          _controller.setLooping(true);
          _controller.play();
        });
    }
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      // only dispose if controller created here
      _controller.dispose();
    }
    super.dispose();
  }

  void _toggleControls() {
    setState(() {
      _showControls = !_showControls;
    });

    if (_showControls) {
      Future.delayed(const Duration(seconds: 3), () {
        if (mounted) {
          setState(() {
            _showControls = false;
          });
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!_isInitialized) {
      return const Center(child: CircularProgressIndicator());
    }

    return GestureDetector(
      onTap: _toggleControls,
      child: Stack(
        children: [
          AspectRatio(aspectRatio: 16 / 9, child: VideoPlayer(_controller)),
          if (_showControls)
            Positioned(
              top: 8,
              right: 8,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black54,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: const Icon(Icons.fullscreen, color: Colors.white),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (_) =>
                                FullscreenVideoPlayer(controller: _controller),
                      ),
                    );
                  },
                ),
              ),
            ),
        ],
      ),
    );
  }
}
