import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

//class BallPage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Ask Me Anything'),
//        backgroundColor: Colors.blue[900],
//      ),
//      body: Container(color: Colors.blue),
//    );
//  }
//}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue[900],
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          height: double.infinity,
          child: FlatButton(
            child: Image.asset('images/ball$ballNumber.png'),
            onPressed: () {
              setState(() {
                ballNumber = Random().nextInt(5) + 1;
              });
            },
          ),
        ),
      ),
    );
  }
}
