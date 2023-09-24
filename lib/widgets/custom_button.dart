import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget{
  final Function()? onPressed;
  final String title;
  CustomButton({required this.onPressed,required this.title});
  Widget build(BuildContext context){
    return  RawMaterialButton(
          onPressed: () => onPressed,
          child: Text(
            title,
            style: TextStyle(
                fontSize: 23, fontWeight: FontWeight.w400, color: Colors.white),
          ),
          fillColor: kBottomContainerColour,
          constraints:
              BoxConstraints.tightFor(width: double.infinity, height: 60),
        );
  }
}