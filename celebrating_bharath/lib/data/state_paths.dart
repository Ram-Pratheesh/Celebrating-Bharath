import 'dart:ui';

// Base reference size of the map where offsets were measured
const double baseMapWidth = 411.4;
const double baseMapHeight = 859.8;

final Map<String, dynamic> statePins = {
  "Maharashtra": {
    "relativeOffset": Offset(108.3 / baseMapWidth, 481.1 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/vid.mp4",
    "description":
        "Maharashtra, home to Mumbai, blends rich traditions with vibrant city life. Known for Ganesh Chaturthi and historic forts, it celebrates diverse culture. Its famous cuisine includes vada pav and puran poli.",
    "touchWidthRatio": 80.0 / baseMapWidth, // relative width
    "touchHeightRatio": 40.0 / baseMapHeight, // relative height
  },

  "Tamil Nadu": {
    "relativeOffset": Offset(153.0 / baseMapWidth, 631.6 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/vid.mp4",
    "description":
        "Tamil Nadu is known for its ancient temples, classical music, and Bharatanatyam dance. Chennai, its capital, is a cultural and educational hub. The state’s rich traditions shine through festivals like Pongal and delicious cuisine like dosa and idli.",
    "touchWidthRatio": 42.0 / baseMapWidth,
    "touchHeightRatio": 35.0 / baseMapHeight,
  },

  "Andhra Pradhesh": {
    "relativeOffset": Offset(155.8 / baseMapWidth, 565.8 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/vid.mp4",
    "description":
        "Andhra Pradesh is famous for its rich Telugu culture, historic temples, and vibrant dance forms like Kuchipudi. The state boasts beautiful landscapes from beaches to hills. Its cuisine is known for spicy flavors, especially the iconic Andhra biryani and pulihora.",
    "touchWidthRatio": 46.0 / baseMapWidth,
    "touchHeightRatio": 35.0 / baseMapHeight,
  },

  "Karnataka": {
    "relativeOffset": Offset(108.4 / baseMapWidth, 575.8 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/vid.mp4",
    "description":
        "Karnataka blends heritage and modernity with historic sites like Hampi and Mysore Palace. Bengaluru, the tech hub, pulses with innovation and culture. The state is famous for classical music, Yakshagana dance, and delicious dishes like Bisi Bele Bath.",
    "touchWidthRatio": 45.0 / baseMapWidth,
    "touchHeightRatio": 40.0 / baseMapHeight,
  },

  "Telangana": {
    "relativeOffset": Offset(161.0 / baseMapWidth, 505.7 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/vid.mp4",
    "description":
        "Telangana, with Hyderabad as its capital, is known for its rich history and the iconic Charminar. The state celebrates vibrant festivals like Bathukamma and offers spicy, flavorful cuisine including Hyderabadi biryani. It’s a blend of tradition and rapid urban growth.",
    "touchWidthRatio": 40.0 / baseMapWidth,
    "touchHeightRatio": 35.0 / baseMapHeight,
  },

  "Chhattisgarh": {
    "relativeOffset": Offset(206.9 / baseMapWidth, 443.3 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/vid.mp4",
    "description":
        "Chhattisgarh is rich in tribal culture and natural beauty with dense forests and waterfalls. Known for traditional dance forms like Pandwani, it celebrates vibrant festivals like Bastar Dussehra. The state’s cuisine features unique flavors with dishes like Chila and Faraa.",
    // You can add ratios here if needed
  },

  "Gujarat": {
    "relativeOffset": Offset(54.5 / baseMapWidth, 417.3 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/vid.mp4",
    "description":
        "Gujarat is famous for its vibrant folk dances like Garba and Dandiya, and the grand Navratri festival. It boasts the stunning Rann of Kutch salt desert and historic sites like Somnath Temple. The state’s cuisine features delicious snacks such as dhokla and khandvi.",
    "touchWidthRatio": 52.0 / baseMapWidth,
    "touchHeightRatio":
        45.0 / baseMapHeight, // You can add ratios here if needed
  },

  "Madhya Pradhesh": {
    "relativeOffset": Offset(152.5 / baseMapWidth, 418.8 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/vid.mp4",
    "description":
        "Madhya Pradesh, known as the “Heart of India,” is rich in history with majestic forts and UNESCO sites like Khajuraho. The state celebrates diverse tribal culture and wildlife in national parks like Kanha. Its cuisine features hearty flavors with dishes like poha and bhutte ka kees.",
    "touchWidthRatio": 65.0 / baseMapWidth,
    "touchHeightRatio":
        45.0 / baseMapHeight, // You can add ratios here if needed
  },

  "Orissa": {
    "relativeOffset": Offset(245.8 / baseMapWidth, 460.0 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/vid.mp4",
    "description":
        "Odisha is renowned for its ancient temples like the Jagannath Temple and classical Odissi dance. The state celebrates vibrant festivals such as Rath Yatra with great devotion. Its coastal cuisine includes delicious seafood and traditional dishes like dalma.",
    // You can add ratios here if needed
  },

  "West Bengal": {
    "relativeOffset": Offset(283.5 / baseMapWidth, 418.5 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/vid.mp4",
    "description":
        "West Bengal is famous for its rich literary heritage, classical music, and the vibrant Durga Puja festival. Kolkata, the cultural capital, blends colonial charm with artistic traditions. The state’s cuisine features iconic dishes like fish curry and sweets like rasgulla",
    "touchWidthRatio": 28.0 / baseMapWidth,
    "touchHeightRatio":
        35.0 / baseMapHeight, // You can add ratios here if needed
  },
  // Add more states here with ratios similarly
};
