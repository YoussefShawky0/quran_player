import 'package:flutter/material.dart';
import 'package:quran_player/model/quran_player_model.dart';

class QuranPlayerWidget extends StatelessWidget {
  const QuranPlayerWidget({super.key, required this.item});

  final QuranPlayerModel item;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFF27445D), width: 2),
            borderRadius: BorderRadius.circular(35),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF205781), Color(0xFF9ACBD0)],
            ),
            color: Color(0xFF9ACBD0),
          ),
          width: double.infinity,
          height: 125,
          child: Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    item.name,
                    style: const TextStyle(
                      color: Color.fromRGBO(246, 248, 213, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          item.pauseQuran();
                        },
                        icon: Icon(Icons.pause_circle_outline_rounded),
                      ),
                      IconButton(
                        onPressed: () {
                          item.playQuran();
                        },
                        icon: Icon(Icons.play_arrow_rounded),
                      ),
                      IconButton(
                        onPressed: () {
                          item.stopQuran();
                        },
                        icon: Icon(Icons.stop_circle_outlined),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
