import 'package:flutter/material.dart';

class ListPeople extends StatefulWidget {
  const ListPeople({Key? key}) : super(key: key);

  @override
  State<ListPeople> createState() => _ListPeopleState();
}

class _ListPeopleState extends State<ListPeople> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'List of people'
        ),
      ),
    );
  }
}
