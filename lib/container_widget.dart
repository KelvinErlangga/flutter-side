import 'package:flutter/material.dart';

void main() => runApp(MyApp3());

class MyApp3 extends StatelessWidget {
  const MyApp3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Container Widget"),
        ),
        body: Container(
          color: Colors.blue[100],
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.only(bottom: 40, top: 50),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Colors.red, Colors.blue])),
            margin: EdgeInsets.all(20),
          ),
        ),
      ),
    );
  }
}
