import 'package:flutter/material.dart';

class StorePage extends StatefulWidget {

 late String myTitle;

StorePage( String title1){
  myTitle = title1;
}
  @override
  State<StorePage> createState() => _StorePageState();
}
class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.greenAccent,
        centerTitle: true,
          title: Text(
            widget.myTitle,
            style: TextStyle(
              color: Colors.blue[800],
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
      ),
     body: Container(
       height: 200,
     child: ListView(
       scrollDirection: Axis.horizontal,
       children: [
       Padding(
         padding: const EdgeInsets.all(10),
         child: InkWell(
           onTap: (){},
             child: Container(
               width: 150,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                 color: Colors.green),
                 child: Text('',
                 style: TextStyle(
                   fontSize: 25,
                   color: Colors.black,
                 ),
                 ),
               ),
             ),
       ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: InkWell(
             onTap: (){},
             child: Container(
               width: 150,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   color: Colors.green),
               child: Text('',
                 style: TextStyle(
                   fontSize: 25,
                   color: Colors.black,
                 ),
               ),
             ),
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: InkWell(
             onTap: (){},
             child: Container(
               width: 150,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   color: Colors.green),
               child: Text('',
                 style: TextStyle(
                   fontSize: 25,
                   color: Colors.black,
                 ),
               ),
             ),
           ),
         ),
       ],
     ),
     ),
      );
}
}
