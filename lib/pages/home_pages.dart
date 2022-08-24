import 'package:flutter/material.dart';

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Title'),
      ),
      body: Column(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: const [


        ],
        )
    );
  }
}
