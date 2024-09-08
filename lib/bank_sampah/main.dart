import 'package:belajar_fundamental/bank_sampah/screens/donasi_screen.dart';
import 'package:belajar_fundamental/bank_sampah/screens/pulsa_data_screen.dart';
import 'package:belajar_fundamental/bank_sampah/screens/jasa_produk_screen.dart';
import 'package:belajar_fundamental/bank_sampah/screens/home_screen.dart';
import 'package:belajar_fundamental/bank_sampah/screens/lain_lain_screen.dart';
import 'package:belajar_fundamental/bank_sampah/screens/profile_screen.dart';
import 'package:belajar_fundamental/bank_sampah/screens/rupiah_screen.dart';
import 'package:belajar_fundamental/bank_sampah/screens/voucher_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BankSampahApp());
}

class BankSampahApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BersihKu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green, fontFamily: 'Poppins'),
      home: HomeScreen(),
      routes: {
        '/profile': (context) => ProfileScreen(),
        '/rupiah': (context) => RupiahScreen(),
        '/voucher': (context) => VoucherScreen(),
        '/pulsa-data': (context) => PulsaDataScreen(),
        '/donasi': (context) => DonasiScreen(),
        '/jasa-produk': (context) => JasaProdukScreen(),
        '/lain-lain': (context) => LainLainScreen(),
      },
    );
  }
}
