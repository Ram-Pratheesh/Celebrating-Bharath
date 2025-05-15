import 'dart:ui';

// Base reference size of the map where offsets were measured
const double baseMapWidth = 411.4;
const double baseMapHeight = 859.8;

final Map<String, dynamic> statePins = {
  "Maharashtra": {
    // Store relative offsets instead of absolute ones
    // relativeX = absoluteX / baseMapWidth, relativeY = absoluteY / baseMapHeight
    "relativeOffset": Offset(108.3 / baseMapWidth, 491.1 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/vid.mp4",
    "description":
        "Maharashtra, home to Mumbai, blends rich traditions with vibrant city life. Known for Ganesh Chaturthi and historic forts, it celebrates diverse culture. Its famous cuisine includes vada pav and puran poli.",
  },

  "Tamil Nadu": {
    // Store relative offsets instead of absolute ones
    // relativeX = absoluteX / baseMapWidth, relativeY = absoluteY / baseMapHeight
    "relativeOffset": Offset(143.0 / baseMapWidth, 637.6 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/vid.mp4",
    "description":
        "Tamil Nadu is known for its ancient temples, classical music, and Bharatanatyam dance. Chennai, its capital, is a cultural and educational hub. The state’s rich traditions shine through festivals like Pongal and delicious cuisine like dosa and idli.",
  },

  "Andhra Pradhesh": {
    // Store relative offsets instead of absolute ones
    // relativeX = absoluteX / baseMapWidth, relativeY = absoluteY / baseMapHeight
    "relativeOffset": Offset(149.8 / baseMapWidth, 573.8 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/vid.mp4",
    "description":
        "Andhra Pradesh is famous for its rich Telugu culture, historic temples, and vibrant dance forms like Kuchipudi. The state boasts beautiful landscapes from beaches to hills. Its cuisine is known for spicy flavors, especially the iconic Andhra biryani and pulihora.",
  },

  "Karnataka": {
    // Store relative offsets instead of absolute ones
    // relativeX = absoluteX / baseMapWidth, relativeY = absoluteY / baseMapHeight
    "relativeOffset": Offset(108.4 / baseMapWidth, 582.8 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/vid.mp4",
    "description":
        "Karnataka blends heritage and modernity with historic sites like Hampi and Mysore Palace. Bengaluru, the tech hub, pulses with innovation and culture. The state is famous for classical music, Yakshagana dance, and delicious dishes like Bisi Bele Bath.",
  },

  "Telangana": {
    // Store relative offsets instead of absolute ones
    // relativeX = absoluteX / baseMapWidth, relativeY = absoluteY / baseMapHeight
    "relativeOffset": Offset(158.0 / baseMapWidth, 512.7 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/vid.mp4",
    "description":
        "Telangana, with Hyderabad as its capital, is known for its rich history and the iconic Charminar. The state celebrates vibrant festivals like Bathukamma and offers spicy, flavorful cuisine including Hyderabadi biryani. It’s a blend of tradition and rapid urban growth.",
  },

  "Chhattisgarh": {
    // Store relative offsets instead of absolute ones
    // relativeX = absoluteX / baseMapWidth, relativeY = absoluteY / baseMapHeight
    "relativeOffset": Offset(202.9 / baseMapWidth, 453.3 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/vid.mp4",
    "description":
        "Chhattisgarh is rich in tribal culture and natural beauty with dense forests and waterfalls. Known for traditional dance forms like Pandwani, it celebrates vibrant festivals like Bastar Dussehra. The state’s cuisine features unique flavors with dishes like Chila and Faraa.",
  },

  "Gujarat": {
    // Store relative offsets instead of absolute ones
    // relativeX = absoluteX / baseMapWidth, relativeY = absoluteY / baseMapHeight
    "relativeOffset": Offset(54.5 / baseMapWidth, 424.3 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/vid.mp4",
    "description":
        "Gujarat is famous for its vibrant folk dances like Garba and Dandiya, and the grand Navratri festival. It boasts the stunning Rann of Kutch salt desert and historic sites like Somnath Temple. The state’s cuisine features delicious snacks such as dhokla and khandvi.",
  },

  "Madhya Pradhesh": {
    // Store relative offsets instead of absolute ones
    // relativeX = absoluteX / baseMapWidth, relativeY = absoluteY / baseMapHeight
    "relativeOffset": Offset(152.5 / baseMapWidth, 422.8 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/vid.mp4",
    "description":
        "Madhya Pradesh, known as the “Heart of India,” is rich in history with majestic forts and UNESCO sites like Khajuraho. The state celebrates diverse tribal culture and wildlife in national parks like Kanha. Its cuisine features hearty flavors with dishes like poha and bhutte ka kees.",
  },

  "Orissa": {
    // Store relative offsets instead of absolute ones
    // relativeX = absoluteX / baseMapWidth, relativeY = absoluteY / baseMapHeight
    "relativeOffset": Offset(241.8 / baseMapWidth, 467.0 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/vid.mp4",
    "description":
        "Odisha is renowned for its ancient temples like the Jagannath Temple and classical Odissi dance. The state celebrates vibrant festivals such as Rath Yatra with great devotion. Its coastal cuisine includes delicious seafood and traditional dishes like dalma.",
  },

  "West Bengal": {
    // Store relative offsets instead of absolute ones
    // relativeX = absoluteX / baseMapWidth, relativeY = absoluteY / baseMapHeight
    "relativeOffset": Offset(276.5 / baseMapWidth, 420.5 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/vid.mp4",
    "description":
        "West Bengal is famous for its rich literary heritage, classical music, and the vibrant Durga Puja festival. Kolkata, the cultural capital, blends colonial charm with artistic traditions. The state’s cuisine features iconic dishes like fish curry and sweets like rasgulla",
  },
  // Add more states here with relativeOffs155.5et calculated similarly
};
