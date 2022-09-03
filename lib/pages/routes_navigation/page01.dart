import 'package:flutter/material.dart';
class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routes')
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget> [
            Text('First Page',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,

            ),
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) =>
                    SecondPage(data: 'this is second page'),
                    ),
                  );
            },
                child: Text('Go to secod page',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),))
          ],
        ),
      ),
    );
  }
}
class SecondPage extends StatelessWidget {
 late final String data;
 SecondPage({
  required this.data});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(
  title: Text('Routing'),
),
body: Center(
child: Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget> [
    Text('Second Page',
    style: TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,

    ),
    ),
],
    ),
),
    );
  }
  }


