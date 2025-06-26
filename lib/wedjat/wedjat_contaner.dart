import 'package:first_app/colors/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WedjatContaner extends StatelessWidget {
  const WedjatContaner({super.key, required this.text, required this.varipol, this.onPressedAdd, this.onPressedNegtiv,});

  final String text;
  final String varipol;
  final  int? add=0;
  final int? negtiv=0;
  final void Function()? onPressedAdd;
  final void Function()? onPressedNegtiv;

  @override
  Widget build(BuildContext context) {

    return InkWell(

       child:  Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 17),
          decoration: BoxDecoration(
            color: MyColors.maelColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                varipol,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Expanded(child:  FloatingActionButton.small(
                    backgroundColor: Color(0xff8B8C9E),
                    shape: CircleBorder(),
                    child: Icon(Icons.add, color: Colors.white),
                    onPressed:  onPressedAdd,
                  ),),
                  SizedBox(width: 9),
                  Expanded(child:FloatingActionButton.small(
                    backgroundColor: Color(0xff8B8C9E),
                    shape: CircleBorder(),
                    child: Icon(Icons.remove, color: Colors.white),
                    onPressed: onPressedNegtiv,
                  ),),

                ],
              ),
            ],
          ),
        )
    );

  }
}
