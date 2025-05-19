import 'package:celebrating_bharath/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // import Riverpod

void main() => runApp(
  const ProviderScope(
    // Wrap your app here
    child: MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Celebrating Bharath',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const SplashScreen(),
    );
  }
}
