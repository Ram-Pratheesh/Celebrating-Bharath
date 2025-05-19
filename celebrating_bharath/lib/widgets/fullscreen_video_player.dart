import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FullscreenVideoPlayer extends StatefulWidget {
  final VideoPlayerController controller;

  const FullscreenVideoPlayer({super.key, required this.controller});

  @override
  State<FullscreenVideoPlayer> createState() => _FullscreenVideoPlayerState();
}

class _FullscreenVideoPlayerState extends State<FullscreenVideoPlayer> {
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    if (widget.controller.value.isInitialized) {
      _isInitialized = true;
    } else {
      widget.controller.initialize().then((_) {
        if (mounted) setState(() => _isInitialized = true);
      });
    }
    widget.controller.play();
  }

  @override
  void dispose() {
    // DO NOT dispose controller here since shared
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child:
                _isInitialized
                    ? AspectRatio(
                      aspectRatio: widget.controller.value.aspectRatio,
                      child: VideoPlayer(widget.controller),
                    )
                    : const CircularProgressIndicator(),
          ),
          Positioned(
            top: 40,
            left: 16,
            child: IconButton(
              icon: const Icon(Icons.close, color: Colors.white, size: 30),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
