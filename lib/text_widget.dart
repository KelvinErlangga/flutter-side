import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  runApp(const Aplikasiku());
}

class Aplikasiku extends StatelessWidget {
  const Aplikasiku({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplikasiku"),
        ),
        body: Center(
          child: Container(
              color: const Color.fromARGB(255, 46, 152, 201),
              width: 400,
              height: 200,
              child: const Text(
                "saya sedang belajar flutter dan saya ingin menjadi developer yang hebat",
                textAlign: TextAlign.center,
                // maxLines: 2,
                // softWrap: true,
                // overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              )),
        ),
      ),
    );
  }
}
