import 'package:bmi_calculator/screens/home.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(BMI_CalculatorApp());
}
class BMI_CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData.dark().copyWith(
        primaryColor: Color(0xff0a0e21),
        scaffoldBackgroundColor: Color(0xff0a0e21)
      ),
      home: HomeScreen(),
    );
  }
}
