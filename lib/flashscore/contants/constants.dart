import 'package:flutter_paywall_template/flashscore/models/description.dart';
import 'package:flutter_paywall_template/flashscore/models/offers.dart';

final offers = [
  Offer(
    duration: 'Per month',
    isDiscount: false,
    price: 'USD 4.99',
    title: 'MONTHLY PASS',
  ),
  Offer(
    title: 'SEASON PASS',
    price: 'USD 34.99',
    duration: 'Per year',
    isDiscount: true,
  )
];

final descriptions = [
  Description(
    description: 'Get rid of banner ads on your iOS app',
    isBold: true,
  ),
  Description(
    description: 'Help us deliver fast result and original\nnews content',
    isBold: false,
  ),
  Description(
    description: 'Odds will remain visible(where available)',
    isBold: false,
  ),
];

final paymentTerms =
    'Payment will be charged to your Apple ID account. Subscription automatically renews unless you turn it off or cancel anytime in the Apple ID account settings at least 24 hours before the end of the subscription period.';
