import 'package:flutter/material.dart';
import '../constants.dart';

class ResuableCard extends StatelessWidget {
  final Widget? child;
  ResuableCard({this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kInactiveCardColour
      ),
    );
  }
}