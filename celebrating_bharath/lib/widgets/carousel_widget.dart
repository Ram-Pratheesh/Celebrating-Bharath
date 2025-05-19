import 'dart:async';
import 'package:flutter/material.dart';

class CarouselWidget extends StatefulWidget {
  final List<String> imageUrls;

  const CarouselWidget({super.key, required this.imageUrls});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  late final PageController _pageController;
  int _currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    // Full width pages
    _pageController = PageController(viewportFraction: 1.0);
    _pageController.addListener(() {
      final page = _pageController.page?.round() ?? 0;
      if (_currentPage != page) {
        setState(() {
          _currentPage = page;
        });
      }
    });

    // Auto-scroll every 4 seconds infinitely
    _timer = Timer.periodic(const Duration(seconds: 4), (timer) {
      if (widget.imageUrls.isEmpty) return;
      int nextPage = _currentPage + 1;
      if (nextPage >= widget.imageUrls.length) {
        nextPage = 0;
      }
      _pageController.animateToPage(
        nextPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.imageUrls.isEmpty) {
      return const SizedBox.shrink();
    }

    return SizedBox(
      height: 230, // height adjusts automatically via AspectRatio
      child: PageView.builder(
        controller: _pageController,
        itemCount: widget.imageUrls.length,
        itemBuilder: (context, index) {
          final url = widget.imageUrls[index];
          return ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: AspectRatio(
              aspectRatio: 4 / 3, // 4:3 aspect ratio
              child: Image.network(
                url,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, progress) {
                  if (progress == null) return child;
                  return const Center(child: CircularProgressIndicator());
                },
                errorBuilder:
                    (context, error, stackTrace) =>
                        const Center(child: Icon(Icons.broken_image)),
              ),
            ),
          );
        },
      ),
    );
  }
}
