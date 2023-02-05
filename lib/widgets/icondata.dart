import 'package:flutter/material.dart';

class Iconcontect extends StatelessWidget {
  final IconData iconData;
  final String titel;

  Iconcontect({required this.iconData, required this.titel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 80,
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          titel,
          style: TextStyle(fontSize: 20, color: Colors.grey),
        ),
      ],
    );
  }
}
