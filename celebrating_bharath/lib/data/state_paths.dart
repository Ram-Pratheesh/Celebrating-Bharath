import 'dart:ui';

// Base reference size of the map where offsets were measured
const double baseMapWidth = 338.8;
const double baseMapHeight = 629.5;

final Map<String, dynamic> statePins = {
  "Maharashtra": {
    // Store relative offsets instead of absolute ones
    // relativeX = absoluteX / baseMapWidth, relativeY = absoluteY / baseMapHeight
    "relativeOffset": Offset(96.4 / baseMapWidth, 347.8 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/vid.mp4",
    "description":
        "Maharashtra is known for its rich history, culture, and vibrant traditions.",
  },
  // Add more states here with relativeOffset calculated similarly
};
