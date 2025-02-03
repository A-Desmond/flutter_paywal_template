import 'package:flutter/material.dart';
import 'package:flutter_paywall_template/flashscore/contants/colors.dart';
import 'package:flutter_paywall_template/flashscore/contants/constants.dart';
import 'package:flutter_paywall_template/flashscore/widget/button.dart';
import 'package:flutter_paywall_template/flashscore/widget/offers_card.dart';
import 'package:flutter_paywall_template/flashscore/widget/offers_title.dart';
import 'package:flutter_paywall_template/flashscore/widget/package_details.dart';
import 'package:flutter_paywall_template/flashscore/widget/terms_section.dart';
import 'package:flutter_paywall_template/flashscore/widget/upgrade.dart';

class FlashScore extends StatefulWidget {
  const FlashScore({super.key});

  @override
  State<FlashScore> createState() => _FlashScoreState();
}

class _FlashScoreState extends State<FlashScore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FlashScoreColors.whiteGray,
      appBar: AppBar(
        backgroundColor: Color(0xFF0F2322),
        centerTitle: true,
        leading: Icon(
          Icons.close_sharp,
          size: 40,
          color: FlashScoreColors.whiteGray,
        ),
        title: Text(
          'Flashscore +',
          style: TextStyle(
              color: FlashScoreColors.whiteGray, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Upgrade(),
            SizedBox(height: 20),
            ...descriptions.map((description) => PackageDetails(
                isBold: description.isBold,
                description: description.description)),
            SizedBox(height: 20),
            OffersTitle(),
            SizedBox(height: 5),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: offers
                    .map((offer) => OfferCard(
                          isSelected: offer.isDiscount,
                          offer: offer,
                        ))
                    .toList()),
            SizedBox(height: 20),
            Button(),
            Align(
              alignment: Alignment.center,
              child: TermsSection(),
            )
          ],
        ),
      ),
    );
  }
}
