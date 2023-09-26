import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/home.dart';
import 'package:bmi_calculator/widgets/custom_button.dart';
import 'package:bmi_calculator/widgets/resuable_card.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double result;
  const ResultScreen({required this.result});

  String? bmi(){
    if(result.round() <= 18.5){
      return ' underweight ⚖️  ⚖️  ⚖️';
    }else if(result.round() > 18.5 && result.round() <= 24.5){
      return 'normal ⚖️  ⚖️  ⚖️';
    }else if (result.round() > 25.0 && result.round() <= 29.0){
      return 'overweight ⚖️  ⚖️  ⚖️';
    }else{
      return 'obase  ⚖️  ⚖️  ⚖️';
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kActiveCardColour,
          title: Center(child: Text('BMI Calculator')),
          centerTitle: false,
        ),
        body: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                Text(
                  'Your Result   👉   👉',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
              ),
              
              ],
            ),
            SizedBox(height: 20,),
            Expanded(child: ResuableCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Text('${result.toStringAsFixed(2)}',style: TextStyle( fontSize: 30 , fontWeight: FontWeight.w400),)),
                  const SizedBox(height: 20,),
                  Center(child: Text('${bmi()}',style: TextStyle( fontSize: 30 , fontWeight: FontWeight.w400),))
                ],
              ),
            )),
            CustomButton(onPressed:(){
              Navigator.pop(context);
            }, title: 'Re-calculate')
          ],
        ));
  }
}
