import 'package:flutter/material.dart';

void main() => runApp(MyApp10());

class MyApp10 extends StatelessWidget {
  const MyApp10({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flexible widget"),
        ),
        body: Column(
          children: [
            Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.pink[100],
                          margin: EdgeInsets.all(5),
                        )),
                    Flexible(
                        flex: 2,
                        child: Container(
                          color: Colors.brown[100],
                          margin: EdgeInsets.all(5),
                        )),
                    Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.orange[100],
                          margin: EdgeInsets.all(5),
                        )),
                  ],
                )),
            Flexible(
                flex: 2,
                child: Container(
                  color: Colors.red[100],
                  margin: EdgeInsets.all(5),
                )),
            Flexible(
                flex: 1,
                child: Container(
                  color: Colors.green[100],
                  margin: EdgeInsets.all(5),
                )),
          ],
        ),
      ),
    );
  }
}
