import 'package:flutter/material.dart';

void main() => runApp(MyApp5());

class MyApp5 extends StatefulWidget {
  const MyApp5({super.key});

  @override
  State<MyApp5> createState() => _MyApp5State();
}

class _MyApp5State extends State<MyApp5> {
  String message = "Ini adalah text";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anonymous Method"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(message),
              TextButton(
                child: Text("Click me"),
                onPressed: () {
                  setState(() {
                    message = "Button clicked";
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
