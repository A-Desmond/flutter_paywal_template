import 'package:flutter/material.dart';

class PackageDetails extends StatelessWidget {
  final String description;
  final bool isBold;
  const PackageDetails(
      {super.key, required this.description, required this.isBold});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.check),
          Text(
            description,
            textAlign: TextAlign.start,
            style: isBold ? TextStyle(fontWeight: FontWeight.bold) : null,
          )
        ],
      ),
    );
  }
}
