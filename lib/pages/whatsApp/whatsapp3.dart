import 'package:flutter/material.dart';
import 'package:flutter_inter_project/pages/whatsApp/whatsapp4.dart';
class Chats extends StatelessWidget {

  List<Info> list =[
    Info('Gevor', 'Gev jan barev inchx es ap jan', '12:08', 'https://randomuser.me/api/portraits/men/82.jpg'),
    Info('Gugo', 'De davai axpers ekuc ktesnvinq', '21:43', 'https://randomuser.me/api/portraits/men/1.jpg'),
    // Info('Hendo', 'Axpers me nkarners qces', '14:44'),
    // Info('Sevo', 'Sevo ekuc kzangem xosanq', '01:55'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(list[index].image),
            ),
            title: Text(list[index].name),
            subtitle: Text(list[index].message),
            trailing: Text(list[index].time),
          );
        }
    );
  }
}
