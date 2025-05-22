# Celebrating Bharath

Celebrating Bharath is an interactive Flutter application that celebrates the cultural diversity of India. Users can explore a zoomable SVG map of India, tap on individual states to view image carousels, detailed descriptions, and looping videos showcasing each state’s heritage and traditions.

---

## Features

- Zoomable & pannable SVG map of India for smooth navigation.
- Precise tap detection on states to select and zoom in.
- Image carousel with auto-scrolling full-width images.
- Informative state descriptions displayed alongside multimedia.
- Looping video player with fullscreen support.
- Smooth animated transitions between zoom levels.
- Responsive UI adapting to various device sizes.
- State management with Riverpod for efficient reactivity.

---

## Getting Started

### Prerequisites

- Flutter SDK (version >= 3.0 recommended)
- Dart SDK
- An IDE such as VS Code or Android Studio
- A physical device

### Installation

Clone the repository and navigate into it:
git clone https://github.com/your-username/celebrating-bharath.git
cd celebrating-bharath

## Get dependencies:
flutter pub get

## Run the app:
flutter run

###Project Structure
lib/
├── data/ # Static data such as state paths and metadata
├── features/ # (Optional) Feature-based folders for scalability
├── screens/ # Main screens like HomeScreen
├── widgets/ # Reusable widgets (CarouselWidget, VideoPlayerWidget, etc.)
└── main.dart # Entry point


## Dependencies
- `flutter_svg` – For rendering SVG maps  
- `video_player` – For video playback  
- `flutter_riverpod` – For state management  

##Contributing
Contributions are welcome! Please fork the repo and create a pull request with your improvements.


