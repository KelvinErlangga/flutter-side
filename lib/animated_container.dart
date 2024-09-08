import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp9());

class MyApp9 extends StatefulWidget {
  const MyApp9({super.key});

  @override
  State<MyApp9> createState() => _MyApp9State();
}

class _MyApp9State extends State<MyApp9> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Animated Container"),
        ),
        body: Center(
          child: GestureDetector(
            // onTap: () {
            //   setState(() {});
            // },
            onDoubleTap: () {
              setState(() {});
            },
            child: AnimatedContainer(
              color: Color.fromARGB(255, random.nextInt(256),
                  random.nextInt(256), random.nextInt(256)),
              duration: Duration(seconds: 1),
              width: 50.0 + random.nextInt(101),
              height: 100.0 + random.nextInt(101),
            ),
          ),
        ),
      ),
    );
  }
}
