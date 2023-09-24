import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/home.dart';
import 'package:bmi_calculator/widgets/custom_button.dart';
import 'package:bmi_calculator/widgets/resuable_card.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double result;
  const ResultScreen({required this.result});
  // void _goHomeScreen(){
  //   Navigator.push(context, MaterialPageRoute(builder: (_){
  //     return HomeScreen();
  //   }));
  // }
  void bmiResult() {}
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Your Result',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
              ),
              
              ],
            ),
            SizedBox(height: 20,),
            Expanded(child: ResuableCard(
            )),
            CustomButton(onPressed:(){}, title: 'Re-calculate')
          ],
        ));
  }
}
