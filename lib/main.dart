import 'package:flutter/material.dart';
import 'package:flutter_medium_level/packages/slider_carousel/gradientColors.dart';
import 'package:flutter_medium_level/packages/slider_carousel/slider_carousel_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
debugShowCheckedModeBanner: false,
     //home: GradColors(),
   home: SlideCards(),
    );
  }
}

