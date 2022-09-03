import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp2());
}

class Myapp2 extends StatelessWidget {
  const Myapp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: MyScreen(),
        ),
      ),
    );
  }
}
class MyScreen extends StatelessWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(

          children: [
            Container(
              alignment: Alignment.center,
              child: const Text(
                'Register',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                'Register to continue',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 55,
                      width: 80,
                      color: Colors.black12,
                      child: const Center(
                        child: Text('f',
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 55,
                      width: 80,
                      color: Colors.black12,
                      child: Center(
                        child: Image.network(
                          'https://mpng.subpng.com/20190731/kvl/kisspng-google-icon-search-icon-5d4174bce2b9b9.0742256615645708129287.jpg',
                          width: 40,
                          height: 40,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 55,
                      width: 80,
                      color: Colors.black12,
                      child: const Center(
                        child: Text('in',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              'or Register With Email',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'Full Name',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const TextField(
              showCursor: true,
              decoration: InputDecoration(
                filled: true,
                hintText: 'Enter your name',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'Email Address',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const TextField(
              showCursor: true,
              decoration: InputDecoration(
                filled: true,
                hintText: 'Enter your mail',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: const Text(

                  'Password',
                  style: TextStyle(
                    fontSize: 20,

                  ),
                ),
              ),
            ),
            const TextField(
              showCursor: true,
              obscureText: true,
              obscuringCharacter: ('*'),
              maxLength: 10,
              decoration: InputDecoration(
                  filled: false,
                  fillColor: Colors.lightGreenAccent,

                  hintText: 'Enter your password'
              ),
            ),
            Padding(

              padding: const EdgeInsets.only(top: 20.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const  [
                    Text(
                      '',
                    ),

                    Text(
                      'Register',
                    ),

                    Icon(
                        Icons.arrow_forward
                    )
                  ],
                ),
                style: ButtonStyle(

                  backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                  fixedSize: MaterialStateProperty.all(const Size(250, 50)),
                  elevation: MaterialStateProperty.all(10),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Already have an account? '),
                  Text('Login',

                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}