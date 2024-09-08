import 'package:flutter/material.dart';

void main() => runApp(MyApp6());

class MyApp6 extends StatelessWidget {
  const MyApp6({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan text style"),
        ),
        body: Center(
          child: Text(
            "Ini adalah text style",
            style: TextStyle(
                fontFamily: "CrashLandingBB",
                fontSize: 40,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationColor: Colors.blue,
                decorationThickness: 3,
                decorationStyle: TextDecorationStyle.dashed),
          ),
        ),
      ),
    );
  }
}
