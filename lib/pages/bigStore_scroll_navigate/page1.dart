import 'package:flutter/material.dart';
import 'package:flutter_inter_project/pages/bigStore_scroll_navigate/page2.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Text('Big store',
          style: TextStyle(
            color: Colors.red[800],
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        color: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget> [
                    getExpanded('vegetables', 'Vegetables'),
                    getExpanded('fruits', 'Fruits'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget> [
                  getExpanded('toys', 'Toys'),
                  getExpanded('households', 'Households'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget> [
                  getExpanded('electronics', 'Electronics'),
                  getExpanded('drinks', 'Drinks'),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
  Expanded getExpanded(
      String image,
      String itsText) {
    return Expanded(
      child: FloatingActionButton(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Image.asset('assets/images/$image.jpg',
                      width: 150, height: 110),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    itsText,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              margin:  EdgeInsets.only(
                  left: 10,top: 15, right: 10, bottom:10 ),
              decoration:  BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                      topLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.purple,
                      spreadRadius: 3,
                      blurRadius: 10,
                    ),
                  ]
              ),
            ),
        onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => StorePage(itsText),
              ),
              );
        },
          ),
    );
  }
}