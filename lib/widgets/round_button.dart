import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final IconData iconData;
  final Function()? onPressed;

  RoundButton({required this.iconData, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: Colors.grey,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        height: 56,
        width: 56,
      ),
      child: Icon(
        iconData,
        size: 40,
        color: Colors.white,
      ),
    );
  }
}
