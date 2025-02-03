import 'package:flutter/material.dart';

class Upgrade extends StatelessWidget {
  const Upgrade({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Upgrade to',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
        Text(
          'FLASHSCORE +',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
