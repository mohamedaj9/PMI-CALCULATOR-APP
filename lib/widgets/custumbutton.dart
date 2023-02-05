import 'package:flutter/material.dart';
import 'package:bmi/conestant.dart';

class castumButton extends StatelessWidget {
  final Function() onPressed;
  final String? titel;
  const castumButton({super.key, required this.onPressed, this.titel});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => onPressed,
      child: Text(
        titel ?? "Culetar",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
      ),
      fillColor: kBottumcontainerColour,
      constraints: BoxConstraints.tightFor(
        width: double.infinity,
        height: 56,
      ),
    );
  }
}
