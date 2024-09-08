import 'package:flutter/material.dart';

void main() {
  runApp(MyApp15());
}

class MyApp15 extends StatelessWidget {
  const MyApp15({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              const SizedBox(height: 120),
              const Image(
                  image: AssetImage("assets/images/no-wifi.png"),
                  width: 120,
                  height: 120),
              const SizedBox(height: 38),
              const Text("Ooops",
                  style: TextStyle(
                      fontSize: 25, fontFamily: "MontserratSemiBold")),
              const SizedBox(height: 24),
              const Text("No Internet Connection Found\n Check your connection",
                  style:
                      TextStyle(fontSize: 18, fontFamily: "MontserratRegular"),
                  textAlign: TextAlign.center),
              const SizedBox(height: 34),
              TextButton(
                  onPressed: () {},
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(42, 14, 42, 14),
                      child: Text("Try Again",
                          style: TextStyle(
                              fontSize: 18, fontFamily: "MontserratSemiBold"))),
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white))
            ],
          ),
        ),
      ),
    );
  }
}
