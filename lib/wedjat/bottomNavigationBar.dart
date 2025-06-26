import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors/Colors.dart';
import '../screen/second_screen.dart';

class Bottomnavigationbar extends StatelessWidget {
  const Bottomnavigationbar({super.key, required this.text, this.onTap});
  final void  Function()?onTap;
 final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap  ,
      child: Container(
        color: MyColors.femealColor,
        height: 100,
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),);
  }}
