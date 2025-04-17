import 'package:flutter/material.dart';
import 'package:quran_player/lists/quran_list.dart';
import 'package:quran_player/widgets/quran_player_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        clipBehavior: Clip.antiAlias,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        backgroundColor: Color(0xFF205781),
        title: const Text(
          'Quran Player',
          style: TextStyle(
            color: Color.fromRGBO(246, 248, 213, 1),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: quranAudio.map((e) => QuranPlayerWidget(item: e)).toList(),
      ),
    );
  }
}
