import 'package:flutter/material.dart';

import '../conestant.dart';

class ReusbalCard extends StatelessWidget {
  final Widget? child;
  final bool? selected;
  final Function()? onPressed;

  ReusbalCard({this.child, this.selected = false, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: child,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: selected == true ? KInactiveCardColour : KActiveCardColour,
            borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
