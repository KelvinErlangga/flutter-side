import 'package:flutter/material.dart';

void main() => runApp(MyAppList());

class MyAppList extends StatefulWidget {
  const MyAppList({super.key});

  @override
  State<MyAppList> createState() => _MyAppListState();
}

class _MyAppListState extends State<MyAppList> {
  List<Widget> widgets = [];

  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List & Listview"),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                TextButton(
                  child: Text("Tambah Data"),
                  onPressed: () {
                    setState(() {
                      widgets.add(Text("Data ke - " + counter.toString()));
                      counter++;
                    });
                  },
                ),
                TextButton(
                  child: Text("Hapus Data"),
                  onPressed: () {
                    setState(() {
                      widgets.removeLast();
                      counter--;
                    });
                  },
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgets,
            )
          ],
        ),
      ),
    );
  }
}
