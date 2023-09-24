import 'package:flutter/material.dart';
import '../constants.dart';

class ResuableCard extends StatelessWidget {
  final Widget? child;
  final bool? selected; 
  final void Function()? onPressed;
  ResuableCard({this.child,this.selected,this.onPressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: child,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: selected == true ? kActiveCardColour : kInactiveCardColour
        ),
      ),
    );
  }
}