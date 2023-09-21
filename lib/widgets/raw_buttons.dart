import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
class RawButtons extends StatelessWidget {
  final Icon? icons;
  final Function()? onPressed;
  RawButtons({this.icons , this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(onPressed:onPressed,
    child: icons,
    fillColor:kBottomContainerColour,
    shape: CircleBorder(),
    constraints: BoxConstraints.tightFor(
      width: 60,
      height: 60
    ),
    );
  }
}