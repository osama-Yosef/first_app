import 'package:first_app/wedjat/AppBar.dart';
import 'package:flutter/material.dart';

import '../colors/Colors.dart';
import '../wedjat/bottomNavigationBar.dart';
import 'home_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key, required this.hight, required this.weight});

  final double hight;
  final double weight;

  @override
  Widget build(BuildContext context) {
    double heightByM=hight/100;
    double bmiResult=weight/(heightByM*heightByM);

    return Scaffold(
      backgroundColor: MyColors.mainColor,
      appBar: MyAppBar(),

      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 00, horizontal: 20),
          child: Column(
            children: [
              Text(
                "Your Result",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 25),
              Container(
                padding: EdgeInsets.symmetric(vertical: 70, horizontal: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: MyColors.maelColor,
                ),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        statusText(bmiResult),
                        style: TextStyle(
                          color: MyColors.ColorTitel,
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        bmiResult.toStringAsFixed(2),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 64,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        description(bmiResult),
                        style: TextStyle(
                          color: MyColors.ColorDescribtion,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Bottomnavigationbar(
        text: 'Re - Calculate',
        onTap: () {
          Navigator.pop(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        },
      ),
    );
  }
}


statusText(double bmiResult){
  if(bmiResult<18.5){
    return "underweight";
  }else if(bmiResult<24.9){
    return "Normal";
  }else if(bmiResult<29.9){
    return "overweight";
  }else {
    return "obesity";
  }
}
description(double bmiResult){
  if(bmiResult<18.5){
    return "Your body weight is lower than normal. This might be due to nutritional deficiency or other health conditions. It's recommended to consult a healthcare provider to gain weight healthily.";
  }else if(bmiResult<24.9){
    return "You have a healthy body weight. Keep maintaining your current lifestyle with balanced nutrition and regular physical activity.";
  }else if(bmiResult<29.9){
    return "You are slightly above the recommended weight for your height. Consider adopting a more active lifestyle and healthier eating habits to reduce health risks.";
  }else {
    return "You are at a higher risk of health problems related to excess body weight, such as heart disease, diabetes, and high blood pressure. It's important to consult a healthcare provider to develop a weight loss plan.";
  }}