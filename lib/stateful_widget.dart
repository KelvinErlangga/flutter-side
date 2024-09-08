import 'package:flutter/material.dart';

void main() => runApp(MyApp4());

class MyApp4 extends StatefulWidget {
  const MyApp4({super.key});

  @override
  State<MyApp4> createState() => _MyApp4State();
}

class _MyApp4State extends State<MyApp4> {
  int number = 0;

  void tekanTombol() {
    setState(() {
      number = number + 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widget Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                number.toString(),
                style: TextStyle(fontSize: 10 + number.toDouble()),
              ),
              TextButton(
                child: Text("Tambah Angka"),
                onPressed: tekanTombol,
              )
            ],
          ),
        ),
      ),
    );
  }
}
