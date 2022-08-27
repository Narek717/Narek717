import 'package:flutter/material.dart';
class OnShop1 extends StatelessWidget {
  const OnShop1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      padding: EdgeInsets.all(25),

      child: Row(
 mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text('Hi,Steven!',
                style: TextStyle(fontSize: 20,
            fontWeight: FontWeight.bold
                ),
              ),
            ),
          Icon(Icons.person, color: Colors.orangeAccent),
        ],
      ),
    );
  }
}
