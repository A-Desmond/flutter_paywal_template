import 'package:flutter/material.dart';
import 'package:flutter_paywall_template/flashscore/contants/colors.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: FlashScoreColors.primaryColor,
          borderRadius: BorderRadius.circular(6)),
      child: Text(
        "I WANT TO REMOVE BANNERS",
        style: TextStyle(
            color: FlashScoreColors.whiteGray,
            fontSize: 12,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
