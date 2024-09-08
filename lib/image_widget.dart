import 'package:flutter/material.dart';

void main() => runApp(MyApp12());

class MyApp12 extends StatelessWidget {
  const MyApp12({super.key}); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Image Widget"),
        ),
        body: Center(
          child: Container(
            color: Colors.black,
            width: 300,
            height: 300,
            padding: EdgeInsets.all(3),
            child: Image(
              image: AssetImage("assets/images/logo_koala.png"),
              fit: BoxFit.contain,
              repeat: ImageRepeat.repeat,
            ),
          ),
        ),
      ),
    );
  }
}
