import 'dart:ffi';

import 'package:first_app/colors/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CastamWedjat extends StatelessWidget {
  const CastamWedjat({super.key, required this.image, required this.dataType, this.isActiv=false,   required this.OnTap});

  final String image;
  final String dataType;
  final  bool isActiv ;
  final Void? Function()? OnTap;


  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: OnTap,
        child:Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 17),
      decoration: BoxDecoration(
        color: isActiv?MyColors.femealColor:MyColors.maelColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          SvgPicture.asset(image),
          Text(dataType, style: TextStyle(fontSize: 20, color: Colors.white)),
        ],
      ),
    ));
  }
}
