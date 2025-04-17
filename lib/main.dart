import 'package:flutter/material.dart';
import 'package:quran_player/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quran Player',
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}
