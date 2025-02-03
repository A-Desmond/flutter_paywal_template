import 'package:flutter/material.dart';
import 'package:flutter_paywall_template/flashscore/contants/colors.dart';

class OffersTitle extends StatelessWidget {
  const OffersTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Text(
          'Select a subscription',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        Container(
          width: 115,
          height: 20,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: FlashScoreColors.primaryColor.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(4)),
          child: Text(
            'SPECIAL OFFER',
            style: TextStyle(
              color: FlashScoreColors.primaryColor,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    );
  }
}
