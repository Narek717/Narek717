import 'package:flutter/material.dart';
import 'package:flutter_inter_project/pages/home_pages.dart';
import 'package:flutter_inter_project/pages/onlineShop/shop1.dart';
import 'package:flutter_inter_project/pages/settings_ui_N.dart';
import 'package:flutter_inter_project/pages/viber_N.dart';
import 'package:flutter_inter_project/pages/whatsApp/whatsapp1.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),

      home: const OnShop(),
      //home:  const Whatsapp1(),
      //home: const HomePageWidget(),
      //home: const SettUI(),
      //home: const Viber(),
    );
  }
}

