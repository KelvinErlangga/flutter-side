import 'package:belajar_fundamental/gojek/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'SF-Pro-Display'),
      title: 'Gojek',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
