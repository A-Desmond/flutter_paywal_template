import 'package:flutter/material.dart';
import 'package:flutter_paywall_template/flashscore/contants/colors.dart';
import 'package:flutter_paywall_template/flashscore/models/offers.dart';

class OfferCard extends StatelessWidget {
  final bool isSelected;
  final Offer offer;
  const OfferCard({
    super.key,
    required this.isSelected,
    required this.offer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 170,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Color(0xFFEDEDED),
          borderRadius: BorderRadius.circular(8),
          border: isSelected
              ? Border.all(
                  color: FlashScoreColors.primaryColor.withValues(alpha: 0.6),
                  width: 2,
                )
              : null),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                offer.title,
                style: TextStyle(fontSize: 10),
              ),
              if (offer.isDiscount)
                Container(
                  width: 45,
                  height: 19,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: FlashScoreColors.primaryColor,
                      borderRadius: BorderRadius.circular(4)),
                  child: Text(
                    '-42%',
                    style: TextStyle(
                        color: FlashScoreColors.whiteGray,
                        fontWeight: FontWeight.w700),
                  ),
                )
            ],
          ),
          Spacer(),
          if (offer.isDiscount)
            Text(
              'US\$59.88',
              style: TextStyle(
                  decoration: TextDecoration.lineThrough, fontSize: 12),
            ),
          Text(
            offer.price,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          Text(
            offer.duration,
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
