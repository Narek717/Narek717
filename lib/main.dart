import 'package:flutter/material.dart';
import 'package:flutter_inter_project/JSON_list/productsList.dart';
import 'package:flutter_inter_project/pages/bigStore_scroll_navigate/page1.dart';
import 'package:flutter_inter_project/pages/different/regisN.dart';
import 'package:flutter_inter_project/pages/different/settings_ui_N.dart';
import 'package:flutter_inter_project/pages/different/viber_N.dart';
import 'package:flutter_inter_project/pages/routes_navigation/page01.dart';
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
       home: const JSON1(),
      // home: const ListData(),
      // home: const PageOne(),
     // home: const Products(),
       //home: const PageOne(),
      // home: const Myapp2()
      // home: const Whatsapp1(),
      // home: const HomePageWidget(),
      // home: const SettUI(),
      // home: const Viber(),
    );
  }
}