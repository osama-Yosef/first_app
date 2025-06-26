import 'package:first_app/screen/home_screen.dart';
import 'package:flutter/material.dart';

import '../colors/Colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomeScreen(),


    ));
  }
}
