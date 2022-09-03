import 'package:flutter/material.dart';
import 'users_data.dart';
import 'services.dart';
class ListData extends StatefulWidget {
  const ListData({Key? key}) : super(key: key);

  @override
  State<ListData> createState() => _ListDataState();
}

class _ListDataState extends State<ListData> {

  late List<Users> users;
  late bool loading;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loading = true;
    Services.getUsers().then((list) {
  setState(() {
    users = list;
    loading = false;
  });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(loading ? 'Loading' : 'Users'),

      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(itemBuilder: (context, index){
Users user = users[index];
 return ListTile(
   title: Text(user.title),
   subtitle: Text(user.body),

 );

      }
      ),
    ),
    );
  }
}
