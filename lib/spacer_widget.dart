import 'package:flutter/material.dart';

void main() => runApp(MyApp13());

class MyApp13 extends StatelessWidget {
  const MyApp13({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan spacer widget"),
        ),
        body: Center(
          child: Row(
            children: [
              Spacer(
                flex: 1,
              ),
              Container(width: 80, height: 80, color: Colors.red),
              Spacer(
                flex: 2,
              ),
              Container(width: 80, height: 80, color: Colors.green),
              Spacer(
                flex: 4,
              ),
              Container(width: 80, height: 80, color: Colors.blue),
              Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
