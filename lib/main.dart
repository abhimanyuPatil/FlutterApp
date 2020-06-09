import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }
void main() {
  return runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Hello World'),
          ),
          body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(color: Colors.lightBlueAccent),
                  child: Text('My first app'),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.purpleAccent),
                  child: Text('My second app'),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.lightGreenAccent),
                  child: Text('My third app'),
                ),
              ]))));
}
