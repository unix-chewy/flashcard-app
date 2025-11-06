import 'package:flutter/material.dart';
import 'screens/start_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flashy', // Updated app name
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFFFAFAF7),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StartScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}