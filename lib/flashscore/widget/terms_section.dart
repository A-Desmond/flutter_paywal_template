import 'package:flutter/material.dart';
import 'package:flutter_paywall_template/flashscore/contants/constants.dart';

class TermsSection extends StatelessWidget {
  const TermsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 11,
    );
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            'Restore previous subscription',
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 13, color: Colors.black),
          ),
        ),
        SizedBox(height: 15),
        Text(
          paymentTerms,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 11,
          ),
        ),
        SizedBox(height: 10),
        Text('Term of use', style: style),
        SizedBox(height: 5),
        Text('Privacy Policy', style: style),
      ],
    );
  }
}
