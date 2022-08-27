import 'package:flutter/material.dart';
import 'package:flutter_inter_project/pages/onlineShop/shop2.dart';
import 'package:flutter_inter_project/pages/onlineShop/shop3.dart';
class OnShop extends StatelessWidget {
  const OnShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
       OnShop1(),
          Container(
           // height: 400,
            padding: EdgeInsets.all(20),
           decoration: const BoxDecoration(
             color: Colors.white60,
             borderRadius: BorderRadius.only(
               topRight: Radius.circular(30),
               topLeft: Radius.circular(30),

             )
           ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(20),

                  ),
                  child: Row(
                    children: [
                      Container(
                      margin: EdgeInsets.only(left: 5),
                        height: 50,
                        width: 250,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search ...',

                          ),
                        ),
                    ),
                      Icon(Icons.search),
                    ],
                  ),
                ),
               Electronics(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
