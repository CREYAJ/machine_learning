import 'package:flutter/material.dart';
import 'homepage.dart'; // Import the new homepage.dart file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Allergen Detection',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Set the HomePage widget from homepage.dart as the home
      home: HomePage(),
      debugShowCheckedModeBanner: false, // Disable the debug banner
    );
  }
}
