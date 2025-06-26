import 'package:first_app/wedjat/AppBar.dart';
import 'package:first_app/wedjat/costam_wedjat.dart';
import 'package:first_app/wedjat/wedjat_contaner.dart';

import 'package:flutter/material.dart';

import '../colors/Colors.dart';
import '../wedjat/bottomNavigationBar.dart';
import 'second_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  bool isMail = true;
  int hight = 100;
  int weight = 50;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.mainColor,
      appBar: MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 35),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //select gender Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: CastamWedjat(
                      image: 'assets/images/material-symbols_male.svg',
                      dataType: 'Male',
                      isActiv: isMail,
                      OnTap: () {
                        setState(() {
                          isMail = true;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 9),
                  Expanded(
                    child: CastamWedjat(
                      image: 'assets/images/material-symbols_female.svg',
                      dataType: 'Female',
                      isActiv: !isMail,
                      OnTap: () {
                        setState(() {
                          isMail = false;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Container(
                padding: EdgeInsets.symmetric(vertical: 27, horizontal: 24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: MyColors.maelColor,
                ),
                child: Column(
                  children: [
                    Text(
                      "Height",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: hight.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "cm",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Slider(
                      min: 50,
                      max: 250,
                      activeColor: Color(0xffE83D67),
                      value: hight.toDouble(),
                      onChanged: (v) {
                        setState(() {
                          hight = v.toInt();
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: WedjatContaner(
                      text: "Weight",
                      varipol: weight.toString(),
                      onPressedAdd: () {
                        setState(() {
                          weight++;
                        });
                      },
                      onPressedNegtiv: () {
                        setState(() {
                          weight--;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 9),
                  Expanded(
                    child: WedjatContaner(
                      text: 'Age',
                      varipol: age.toString(),
                      onPressedAdd: () {
                        setState(() {
                          age++;
                        });
                      },
                      onPressedNegtiv: () {
                        setState(() {
                          age--;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Bottomnavigationbar(
        text: "Calculate",
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SecondScreen(
                hight: hight.toDouble(),
                weight: weight.toDouble(),
              ),
            ),
          );
        },
      ),
    );
  }
}
