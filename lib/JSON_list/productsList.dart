import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootPackage;

import 'productsParse.dart';

class JSON1 extends StatefulWidget {
  const JSON1({Key? key}) : super(key: key);

  @override
  State<JSON1> createState() => _JSON1State();
}

class _JSON1State extends State<JSON1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: ReadJSONData(),
          builder: (BuildContext context, AsyncSnapshot<List<Users>> snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text('${snapshot.error}'),
              );
            } else if (snapshot.hasData) {
              var items = snapshot.data as List<Users>;

              return ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 10,
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              child: Image(
                                image: NetworkImage(
                                    items[index].imageUrl.toString()),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        items[index].productName.toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Text(
                                        items[index].price.toString(),
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  });
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }

  Future<List<Users>> ReadJSONData() async {
    final jsonData =
        await rootPackage.rootBundle.loadString('JSON/products.json');
    final list = json.decode(jsonData) as List<dynamic>;
    return list.map((e) => Users.fromJson(e)).toList();
  }
}
