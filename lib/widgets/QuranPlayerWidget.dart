import 'package:flutter/material.dart';

class QuranPlayerWidget extends StatelessWidget {
  const QuranPlayerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
      ),
    );
  }
}
