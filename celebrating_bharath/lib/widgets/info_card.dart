// lib/widgets/info_card.dart
import 'package:celebrating_bharath/widgets/video_player_widget.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String stateName;
  final String description;
  final String videoUrl;
  final String title;

  const InfoCard({
    super.key,
    required this.stateName,
    required this.description,
    required this.videoUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // State Name
            Text(
              stateName,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            // Row with Video on left and Description on right
            Row(
              children: [
                // Video on the left side
                Expanded(
                  flex: 2,
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: VideoPlayerWidget(videoUrl: videoUrl),
                  ),
                ),
                const SizedBox(width: 10),

                // Description on the right side
                Expanded(
                  flex: 3,
                  child: SingleChildScrollView(
                    child: Text(
                      description,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
