import 'package:flutter/material.dart';
import 'package:flutter_inter_project/pages/whatsApp/whatsapp2.dart';

class Whatsapp1 extends StatelessWidget {
  const Whatsapp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
      child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('WhatsApp'),
        actions: const <Widget>[
          Icon(Icons.search),
          Icon(Icons.more_vert)
        ],
        bottom: const TabBar(
          indicatorColor: Colors.white,
          labelStyle: TextStyle(
            fontWeight: FontWeight.bold
          ),
          tabs: <Widget>[
            Tab(icon: Icon(Icons.camera_alt),),
            Tab(text: 'CHATS',),
            Tab(text: 'STATUS',),
            Tab(text: 'CALLS',)
          ],
        ),
      ),
       body: TabBarView(
         children: <Widget>[
           Container(),
           ForChats(),
           Container(),
           Container(),
         ],
       ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: const Icon(Icons.message),
          backgroundColor: Colors.teal,
        ),
    ),
    );
    return Container();
  }
}