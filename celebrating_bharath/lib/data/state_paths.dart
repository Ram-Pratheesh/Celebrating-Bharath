import 'dart:ui';

// Base reference size of the map where offsets were measured
const double baseMapWidth = 411.4;
const double baseMapHeight = 859.8;

final Map<String, dynamic> statePins = {
  "Maharashtra": {
    "relativeOffset": Offset(113.3 / baseMapWidth, 481.1 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/maharashtra/maharashtra/Maharashtra.mp4",
    "description":
        "Maharashtra, home to Mumbai, blends rich traditions with vibrant city life. Known for Ganesh Chaturthi and historic forts, it celebrates diverse culture. Its famous cuisine includes vada pav and puran poli.",
    "touchWidthRatio": 62.0 / baseMapWidth, // relative width
    "touchHeightRatio": 40.0 / baseMapHeight, // relative height
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/maharashtra/maharashtra/img1.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/maharashtra/maharashtra/img2.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/maharashtra/maharashtra/img3.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/maharashtra/maharashtra/img4.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/maharashtra/maharashtra/img5.jpg",
    ],
  },

  "Tamil Nadu": {
    "relativeOffset": Offset(153.0 / baseMapWidth, 631.6 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Tamil Nadu/Tn_final_1.mp4",
    "description":
        "Tamil Nadu is known for its ancient temples, classical music, and Bharatanatyam dance. Chennai, its capital, is a cultural and educational hub. The state’s rich traditions shine through festivals like Pongal and delicious cuisine like dosa and idli.",
    "touchWidthRatio": 39.0 / baseMapWidth,
    "touchHeightRatio": 35.0 / baseMapHeight,
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Tamil Nadu/img1.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Tamil Nadu/img2.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Tamil Nadu/img3.jpeg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Tamil Nadu/img4.webp",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Tamil Nadu/img5.jpg",
    ],
  },

  "Andhra Pradhesh": {
    "relativeOffset": Offset(155.8 / baseMapWidth, 565.8 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Andhra/andhra_1.mp4",
    "description":
        "Andhra Pradesh is famous for its rich Telugu culture, historic temples, and vibrant dance forms like Kuchipudi. The state boasts beautiful landscapes from beaches to hills. Its cuisine is known for spicy flavors, especially the iconic Andhra biryani and pulihora.",
    "touchWidthRatio": 46.0 / baseMapWidth,
    "touchHeightRatio": 35.0 / baseMapHeight,
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Andhra/img1.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Andhra/img2.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Andhra/img3.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Andhra/img4.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Andhra/img5.jpg",
    ],
  },

  "Karnataka": {
    "relativeOffset": Offset(110.4 / baseMapWidth, 575.8 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Karnataka/karnataka bharath final_1.mp4",
    "description":
        "Karnataka blends heritage and modernity with historic sites like Hampi and Mysore Palace. Bengaluru, the tech hub, pulses with innovation and culture. The state is famous for classical music, Yakshagana dance, and delicious dishes like Bisi Bele Bath.",
    "touchWidthRatio": 41.0 / baseMapWidth,
    "touchHeightRatio": 40.0 / baseMapHeight,
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Karnataka/img1.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Karnataka/img2.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Karnataka/img3.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Karnataka/img4.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Karnataka/img5.jpg",
    ],
  },

  "Telangana": {
    "relativeOffset": Offset(161.0 / baseMapWidth, 505.7 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Telangana/telangana_1.mp4",
    "description":
        "Telangana, with Hyderabad as its capital, is known for its rich history and the iconic Charminar. The state celebrates vibrant festivals like Bathukamma and offers spicy, flavorful cuisine including Hyderabadi biryani. It’s a blend of tradition and rapid urban growth.",
    "touchWidthRatio": 40.0 / baseMapWidth,
    "touchHeightRatio": 35.0 / baseMapHeight,
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Telangana/img1.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Telangana/img2.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Telangana/img3.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Telangana/img4.jpg",
    ],
  },

  "Chhattisgarh": {
    "relativeOffset": Offset(206.9 / baseMapWidth, 443.3 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Chhattisgarh/Chhatisgarh out_1.mp4",
    "description":
        "Chhattisgarh is rich in tribal culture and natural beauty with dense forests and waterfalls. Known for traditional dance forms like Pandwani, it celebrates vibrant festivals like Bastar Dussehra. The state’s cuisine features unique flavors with dishes like Chila and Faraa.",
    // You can add ratios here if needed
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Chhattisgarh/img1.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Chhattisgarh/img2.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Chhattisgarh/img3.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Chhattisgarh/img4.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Chhattisgarh/img5.jpg",
    ],
  },

  "Gujarat": {
    "relativeOffset": Offset(54.5 / baseMapWidth, 417.3 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/gujarat/gujarat_1.mp4",
    "description":
        "Gujarat is famous for its vibrant folk dances like Garba and Dandiya, and the grand Navratri festival. It boasts the stunning Rann of Kutch salt desert and historic sites like Somnath Temple. The state’s cuisine features delicious snacks such as dhokla and khandvi.",
    "touchWidthRatio": 52.0 / baseMapWidth,
    "touchHeightRatio": 45.0 / baseMapHeight,
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/gujarat/img1.jpeg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/gujarat/img2.webp",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/gujarat/img3.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/gujarat/img4.jpeg",
    ], // You can add ratios here if needed
  },

  "Madhya Pradhesh": {
    "relativeOffset": Offset(152.5 / baseMapWidth, 418.8 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/MP/Madhya Pradesh_1.mp4",
    "description":
        "Madhya Pradesh, known as the “Heart of India,” is rich in history with majestic forts and UNESCO sites like Khajuraho. The state celebrates diverse tribal culture and wildlife in national parks like Kanha. Its cuisine features hearty flavors with dishes like poha and bhutte ka kees.",
    "touchWidthRatio": 65.0 / baseMapWidth,
    "touchHeightRatio": 45.0 / baseMapHeight,
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/MP/img1.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/MP/img2.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/MP/img3.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/MP/img4.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/MP/img5.jpg",
    ], // You can add ratios here if needed
  },

  "Orissa": {
    "relativeOffset": Offset(245.8 / baseMapWidth, 460.0 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Orissa/Odisha_edited_1.mp4",
    "description":
        "Odisha is renowned for its ancient temples like the Jagannath Temple and classical Odissi dance. The state celebrates vibrant festivals such as Rath Yatra with great devotion. Its coastal cuisine includes delicious seafood and traditional dishes like dalma.",
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Orissa/img1.png",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Orissa/img2.webp",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Orissa/img3.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Orissa/img4.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Orissa/img5.jpg",
    ], // You can add ratios here if needed
  },

  "West Bengal": {
    "relativeOffset": Offset(283.5 / baseMapWidth, 418.5 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/WB/West Bengal_1.mp4",
    "description":
        "West Bengal is famous for its rich literary heritage, classical music, and the vibrant Durga Puja festival. Kolkata, the cultural capital, blends colonial charm with artistic traditions. The state’s cuisine features iconic dishes like fish curry and sweets like rasgulla",
    "touchWidthRatio": 28.0 / baseMapWidth,
    "touchHeightRatio": 35.0 / baseMapHeight,
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/WB/img1.jpeg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/WB/img2.jpeg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/WB/img3.jpeg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/WB/img4.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/WB/img5.jpeg",
    ], // You can add ratios here if needed
  },

  "Rajasthan": {
    "relativeOffset": Offset(86.2 / baseMapWidth, 362.3 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Rajasthan/Rajastha_edited_1.mp4",
    "description":
        "Rajasthan is known for its majestic forts, palaces, and rich Rajput heritage. The state celebrates colorful festivals like Desert Festival and Teej with traditional folk music and dance. Its cuisine is famous for spicy dishes like dal bati churma and ghewar",
    "touchWidthRatio": 64.0 / baseMapWidth,
    "touchHeightRatio": 40.0 / baseMapHeight,
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Rajasthan/img1.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Rajasthan/img2.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Rajasthan/img3.jpeg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Rajasthan/img4.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Rajasthan/img5.jpeg",
    ], // You can add ratios here if needed
  },

  "Uttar Pradesh": {
    "relativeOffset": Offset(182.5 / baseMapWidth, 345.8 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/UP/uttar pradesh_1.mp4",
    "description":
        "Uttar Pradesh is a land of historical and spiritual significance, home to the Taj Mahal and sacred cities like Varanasi. The state celebrates vibrant festivals like Diwali and Holi with great fervor. Its cuisine offers rich flavors with specialties like kebabs and sweets like peda.",
    "touchWidthRatio": 55.0 / baseMapWidth,
    "touchHeightRatio": 40.0 / baseMapHeight,
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/UP/img1.webp",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/UP/img2.webp",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/UP/img3.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/UP/img4.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/UP/img5.jpg",
    ], // You can add ratios here if needed
  },

  "Bihar": {
    "relativeOffset": Offset(258.6 / baseMapWidth, 370.4 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Bihar/Bihar_final_out_1.mp4",
    "description":
        "Bihar is known for its ancient heritage, including Nalanda University and Bodh Gaya, where Buddha attained enlightenment. The state celebrates festivals like Chhath Puja with deep devotion. Its cuisine features simple, hearty dishes like litti chokha.",
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Bihar/img1.webp",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Bihar/img2.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Bihar/img3.webp",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Bihar/img4.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Bihar/img5.jpg",
    ], // You can add ratios here if needed
  },

  "Jharkhand": {
    "relativeOffset": Offset(245.1 / baseMapWidth, 412.8 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Jharkhan/jharkhand celebrate bharath_1.mp4",
    "description":
        "Jharkhand is rich in natural beauty with forests, waterfalls, and tribal culture. The state celebrates vibrant festivals like Sarhul and Karma with traditional music and dance. Its cuisine includes flavorful tribal dishes like dhuska and red ant chutney.",
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Jharkhan/img1.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Jharkhan/img2.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Jharkhan/img3.jpeg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Jharkhan/img4.jpeg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Jharkhan/img5.jpeg",
    ], // You can add ratios here if needed
  },

  "Himachal Pradesh": {
    "relativeOffset": Offset(139.7 / baseMapWidth, 256.8 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Himachal/Himachal pradesh final_1.mp4",
    "description":
        "Himachal Pradesh is known for its breathtaking Himalayan landscapes, serene hill stations, and spiritual temples. The state celebrates lively festivals like Kullu Dussehra with vibrant folk dances. Its cuisine features warming dishes like siddu and trout fish preparations.",
    "touchWidthRatio": 35.0 / baseMapWidth,
    "touchHeightRatio": 34.0 / baseMapHeight,
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Himachal/img1.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Himachal/img2.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Himachal/img3.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Himachal/img4.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Himachal/img5.jpg",
    ], // You can add ratios here if needed
  },

  "Jammu-Kashmir": {
    "relativeOffset": Offset(133.5 / baseMapWidth, 212.0 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/JammuKashmir/jammu_1.mp4",
    "description":
        "Jammu and Kashmir is famed for its stunning natural beauty with snow-capped mountains and serene valleys. The region is rich in culture, celebrating festivals like Eid and Lohri with warmth. Its cuisine delights with dishes like Rogan Josh and Kahwa tea.",
    "touchWidthRatio": 64.0 / baseMapWidth,
    "touchHeightRatio": 38.0 / baseMapHeight,
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/JammuKashmir/img1.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/JammuKashmir/img2.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/JammuKashmir/img3.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/JammuKashmir/img4.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/JammuKashmir/img5.jpg",
    ], // You can add ratios here if needed
  },

  "Uttarakhand": {
    "relativeOffset": Offset(165.7 / baseMapWidth, 290.2 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Uttarakhand/Uttarakhand_1.mp4",
    "description":
        "Uttarakhand, known as the “Land of the Gods,” is famous for its sacred temples and Himalayan beauty. The state celebrates festivals like Kumbh Mela with great devotion. Its cuisine includes wholesome dishes like Aloo Ke Gutke and Bal Mithai sweets.",
    "touchWidthRatio": 38.0 / baseMapWidth,
    "touchHeightRatio": 30.0 / baseMapHeight,
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Uttarakhand/img1.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Uttarakhand/img2.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Uttarakhand/img3.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Uttarakhand/img4.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Uttarakhand/img5.jpg",
    ], // You can add ratios here if needed
  },

  "Punjab": {
    "relativeOffset": Offset(112.0 / baseMapWidth, 281.6 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Punjab/Punjab_final [D32DFAD]_1.mp4",
    "description":
        "Punjab is known for its lively Bhangra dance, vibrant festivals like Lohri, and rich Sikh heritage. The state boasts fertile lands and hearty cuisine featuring dishes like sarson da saag and makki di roti. Punjab’s warm culture reflects in its joyous celebrations and community spirit.",
    "touchWidthRatio": 35.0 / baseMapWidth,
    "touchHeightRatio": 30.0 / baseMapHeight,
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Punjab/img1.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Punjab/img2.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Punjab/img3.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Punjab/img4.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Punjab/img5.jpg",
    ], // You can add ratios here if needed
  },

  "Haryana": {
    "relativeOffset": Offset(122.3 / baseMapWidth, 305.7 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Haryana/Haryana_1.mp4",
    "description":
        "Haryana is known for its strong agricultural roots and vibrant folk traditions like the festive Teej. The state celebrates energetic dances such as Ghoomar and cultural fairs with enthusiasm. Its cuisine features hearty dishes like bajra roti and kadhi.",
    "touchWidthRatio": 30.0 / baseMapWidth,
    "touchHeightRatio": 27.0 / baseMapHeight,
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Haryana/img1.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Haryana/img2.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Haryana/img3.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Haryana/img4.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Haryana/img5.jpg",
    ], // You can add ratios here if needed
  },

  "Delhi": {
    "relativeOffset": Offset(148.1 / baseMapWidth, 318.9 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Delhi/Delhi_1.mp4",
    "description":
        "Delhi, India’s capital, blends rich history with modern urban life. It’s famous for landmarks like the Red Fort and India Gate, and vibrant festivals like Diwali. The city’s diverse cuisine offers delights from street food to Mughlai specialties.",
    "touchWidthRatio": 28.0 / baseMapWidth,
    "touchHeightRatio": 19.0 / baseMapHeight,
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Delhi/img1.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Delhi/img2.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Delhi/img3.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Delhi/img4.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Delhi/img5.jpeg",
    ], // You can add ratios here if needed
  },

  "Sikkim": {
    "relativeOffset": Offset(295.8 / baseMapWidth, 330.8 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Sikkim/Sikkim_1.mp4",
    "description":
        "Sikkim, nestled in the Himalayas, is known for its stunning landscapes and Buddhist monasteries. The state celebrates vibrant festivals like Losar and Bumchu with deep spiritual significance. Its cuisine features unique flavors with dishes like momos and gundruk.",
    "touchWidthRatio": 46.0 / baseMapWidth,
    "touchHeightRatio": 34.0 / baseMapHeight,
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Sikkim/img1.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Sikkim/img2.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Sikkim/img3.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Sikkim/img4.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Sikkim/img5.jpg",
    ], // You can add ratios here if needed
  },

  "Assam": {
    "relativeOffset": Offset(340.6 / baseMapWidth, 349.3 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Assam/assam .mp4",
    "description":
        "Assam is famous for its lush tea gardens, rich biodiversity, and the mighty Brahmaputra River. The state celebrates colorful festivals like Bihu with traditional music and dance. Its cuisine includes flavorful dishes like fish tenga and pitha sweets.",
    "touchWidthRatio": 44.0 / baseMapWidth,
    "touchHeightRatio": 25.0 / baseMapHeight,
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Assam/img1.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Assam/img2.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Assam/img3.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Assam/img4.jpg",
    ], // You can add ratios here if needed
  },

  "Arunachal Pradesh": {
    "relativeOffset": Offset(372.1 / baseMapWidth, 304.7 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Arunachal/Arunachal pradesh_1.mp4",
    "description":
        "Arunachal Pradesh is known for its pristine landscapes, diverse tribes, and vibrant festivals like Losar and Nyokum. The state’s rich cultural heritage shines through traditional dances and crafts. Its cuisine features unique flavors with dishes made from local herbs and bamboo shoots.",
    "touchWidthRatio": 50.0 / baseMapWidth,
    "touchHeightRatio": 30.0 / baseMapHeight,
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Arunachal/img1.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Arunachal/img2.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Arunachal/img3.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Arunachal/img4.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Arunachal/img5.jpg",
    ], // You can add ratios here if needed
  },

  "Nagaland": {
    "relativeOffset": Offset(384.0 / baseMapWidth, 352.4 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Nagaland/nagaland_1.mp44",
    "description":
        "Nagaland is famous for its vibrant tribal culture and the colorful Hornbill Festival. The state is rich in traditional music, dance, and crafts. Its cuisine is known for smoked meats and spicy flavors using local herbs.",
    "touchWidthRatio": 50.0 / baseMapWidth,
    "touchHeightRatio": 30.0 / baseMapHeight,
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Nagaland/img1.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Nagaland/img2.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Nagaland/img3.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Nagaland/img4.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Nagaland/img5.jpg",
    ], // You can add ratios here if needed
  },

  "Manipur": {
    "relativeOffset": Offset(378.7 / baseMapWidth, 380.4 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Manipur/manipur final_1.mp4",
    "description":
        "Manipur is known for its classical dance form, Manipuri, and rich tribal heritage. The state celebrates festivals like Yaoshang with vibrant music and sports. Its cuisine features delicacies like Eromba and smoked fish dishes.",
    "touchWidthRatio": 50.0 / baseMapWidth,
    "touchHeightRatio": 30.0 / baseMapHeight,
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Manipur/img1.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Manipur/img2.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Manipur/img3.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Manipur/img4.jpg",
    ], // You can add ratios here if needed
  },

  "MIzoram": {
    "relativeOffset": Offset(369.4 / baseMapWidth, 420.4 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Mizoram/mizoram_1.mp4",
    "description":
        "Mizoram is known for its scenic hills, vibrant tribal culture, and traditional festivals like Chapchar Kut. The state showcases lively folk dances and music unique to the Mizo people. Its cuisine features tasty dishes like bai and smoked pork.",
    "touchWidthRatio": 50.0 / baseMapWidth,
    "touchHeightRatio": 48.0 / baseMapHeight,
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Mizoram/img1.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Mizoram/img2.jpeg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Mizoram/img3.jpeg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Mizoram/img4.jpg",
    ], // You can add ratios here if needed
  },

  "Tripura": {
    "relativeOffset": Offset(323.8 / baseMapWidth, 410.8 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Tripura/Tripura_1.mp4",
    "description":
        "Tripura is rich in tribal traditions and natural beauty with lush hills and waterfalls. The state celebrates festivals like Kharchi Puja with great zeal. Its cuisine includes unique dishes like Mui Borok and bamboo shoot preparations.",
    "touchWidthRatio": 40.0 / baseMapWidth,
    "touchHeightRatio": 44.0 / baseMapHeight,
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Tripura/img1.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Tripura/img2.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Tripura/img3.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Tripura/img4.jpg",
    ], // You can add ratios here if needed
  },

  "Meghalaya": {
    "relativeOffset": Offset(321.5 / baseMapWidth, 372.8 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Meghalaya/Meghalya_final_1.mp4",
    "description":
        "Meghalaya, known as the is famous for its breathtaking landscapes and living root bridges. The state celebrates vibrant festivals like Wangala with traditional music and dance. Its cuisine features dishes made from fresh bamboo shoots and smoked meat.",
    "touchWidthRatio": 40.0 / baseMapWidth,
    "touchHeightRatio": 20.0 / baseMapHeight,
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Meghalaya/img1.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Meghalaya/img2.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Meghalaya/img3.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Meghalaya/img4.jpg",
    ], // You can add ratios here if needed
  },

  "Chandigarh": {
    "relativeOffset": Offset(134.4 / baseMapWidth, 282.5 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Chandigarh/Chandigarh_Bhumika Dhingra_1_1.mp4",
    "description":
        "Chandigarh is a modern, well-planned city known for its beautiful architecture by Le Corbusier. It serves as the capital for both Punjab and Haryana, blending urban life with green spaces. The city celebrates diverse cultural events and offers a mix of Punjabi and Haryanvi cuisine.",
    "touchWidthRatio": 10.0 / baseMapWidth,
    "touchHeightRatio": 10.0 / baseMapHeight,
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Chandigarh/img1.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Chandigarh/img2.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Chandigarh/img3.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Chandigarh/img4.png",
    ], // You can add ratios here if needed
  },

  "Dadra and Nagar Haveli": {
    "relativeOffset": Offset(75.4 / baseMapWidth, 474.0 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Dadra/Dadra and Nagar Haveli and Daman and Diu_1.mp4",
    "description":
        "Dadra and Nagar Haveli is known for its lush forests, tribal culture, and serene natural beauty. The region celebrates vibrant festivals like Dussehra with traditional dance and music. Its cuisine features simple, flavorful tribal dishes using local ingredients.",
    "touchWidthRatio": 12.0 / baseMapWidth,
    "touchHeightRatio": 10.0 / baseMapHeight,
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Dadra/img1.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Dadra/img2.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Dadra/img3.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Dadra/img4.jpg",
    ], // You can add ratios here if needed
  },

  "Goa": {
    "relativeOffset": Offset(76.6 / baseMapWidth, 560.0 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Goa/goa celebrate bharath_1_1.mp4",
    "description":
        "Goa is famous for its stunning beaches, vibrant nightlife, and Portuguese heritage. The state celebrates colorful festivals like Carnival and Shigmo with music and dance. Its cuisine offers delicious seafood dishes flavored with local spices and coconut.",
    "touchWidthRatio": 27.0 / baseMapWidth,
    "touchHeightRatio": 27.0 / baseMapHeight,
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Goa/img1.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Goa/img2.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Goa/img3.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Goa/img4.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Goa/img5.jpg",
    ], // You can add ratios here if needed
  },

  "Lakshadweep": {
    "relativeOffset": Offset(65.9 / baseMapWidth, 656.6 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Lakshwadeep/lakshwadeep bharath_1.mp4",
    "description":
        "Lakshadweep is a beautiful group of islands known for pristine beaches and coral reefs. The islands have a unique culture with traditional dances and vibrant festivals. Its cuisine features fresh seafood flavored with coconut and local spices.",
    "touchWidthRatio": 44.0 / baseMapWidth,
    "touchHeightRatio": 100.0 / baseMapHeight,
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Lakshwadeep/img1.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Lakshwadeep/img2.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Lakshwadeep/img3.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Lakshwadeep/img4.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Lakshwadeep/img5.jpg",
    ], // You can add ratios here if needed
  },

  "Andaman and Nicobar": {
    "relativeOffset": Offset(361.1 / baseMapWidth, 637.8 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Andaman/Andaman_1.mp4",
    "description":
        "The Andaman and Nicobar Islands are famous for their stunning beaches, crystal-clear waters, and rich marine life. The islands showcase diverse tribal cultures and vibrant festivals. Their cuisine highlights fresh seafood with tropical flavors and coconut.",
    "touchWidthRatio": 90.0 / baseMapWidth,
    "touchHeightRatio": 160.0 / baseMapHeight,
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Andaman/img1.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Andaman/img2.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Andaman/img3.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Andaman/img4.jpg",
    ], // You can add ratios here if needed
  },
  "Puducherry": {
    "relativeOffset": Offset(201.1 / baseMapWidth, 633.3 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Pondi/Puducherry_1.mp4",
    "description":
        "Puducherry, with its French colonial architecture, offers a unique blend of Indian and French cultures. The city is known for its peaceful beaches and vibrant spiritual life. Its cuisine reflects a fusion of French and Tamil flavors, with dishes like seafood curry and baguettes.",
    "touchWidthRatio": 54.0 / baseMapWidth,
    "touchHeightRatio": 25.0 / baseMapHeight,
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Pondi/img1.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Pondi/img2.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Pondi/img3.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Pondi/img4.jpg",
    ], // You can add ratios here if needed
  },

  "Kerala": {
    "relativeOffset": Offset(110.2 / baseMapWidth, 653.3 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Kerala/kerala_1.mp4",
    "description":
        "Kerala, known as God’s Own Country, is famous for its serene backwaters, lush greenery, and rich cultural heritage. The state celebrates festivals like Onam with traditional dance and music. Its cuisine features flavorful dishes like appam, fish curry, and sadya.",
    "touchWidthRatio": 38.0 / baseMapWidth,
    "touchHeightRatio": 25.0 / baseMapHeight,
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Kerala/img1.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Kerala/img2.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Kerala/img3.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Kerala/img4.jpg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Kerala/img5.jpg",
    ], // You can add ratios here if needed
  },

  "Daman and Diu": {
    "relativeOffset": Offset(38.0 / baseMapWidth, 476.8 / baseMapHeight),
    "videoUrl":
        "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Daman/Dadra and Nagar Haveli and Daman and Diu_1.mp4",
    "description":
        "Daman and Diu are coastal territories known for their beautiful beaches and Portuguese colonial architecture. The region celebrates vibrant festivals blending Indian and Portuguese cultures. Its cuisine features seafood specialties with unique coastal flavors.",
    "touchWidthRatio": 50.0 / baseMapWidth,
    "touchHeightRatio": 25.0 / baseMapHeight,
    "imageUrls": [
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Daman/img1.webp",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Daman/img2.jpeg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Daman/img3.jpeg",
      "https://bharathvideosstorage.blob.core.windows.net/bharath-videos/Daman/img4.jpg",
    ], // You can add ratios here if needed
  },
  // Add more states here with ratios similarly
};
