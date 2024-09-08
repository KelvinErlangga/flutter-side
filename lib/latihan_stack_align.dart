import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp11());

class MyApp11 extends StatelessWidget {
  const MyApp11({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Poppins"),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan stack & align"),
        ),
        body: Stack(
          children: <Widget>[
            Column(children: [
              Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.black12,
                          )),
                    ],
                  )),
              Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.black12,
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                          )),
                    ],
                  ))
            ]),
            ListView(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Text ini adalah lapisan tengah pada stack.",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Text ini adalah lapisan tengah pada stack.",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Text ini adalah lapisan tengah pada stack.",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Text ini adalah lapisan tengah pada stack.",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Text ini adalah lapisan tengah pada stack.",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Text ini adalah lapisan tengah pada stack.",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Text ini adalah lapisan tengah pada stack.",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Text ini adalah lapisan tengah pada stack.",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Align(
              alignment: Alignment(0, 0.9),
              child: TextButton(
                  child: Text("Click Me"),
                  onPressed: () {},
                  style:
                      TextButton.styleFrom(backgroundColor: Colors.blue[100])),
            )
          ],
        ),
      ),
    );
  }
}
