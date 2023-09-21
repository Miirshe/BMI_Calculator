import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconContent extends StatelessWidget {
  final IconData iconData;
  final String title;
  IconContent({required this.iconData , required this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Icon(iconData, size: 80,),
      const SizedBox(height: 15,),
      Text(title,style: TextStyle(fontSize: 20 , color: Colors.grey),)
    ]);
  }
}