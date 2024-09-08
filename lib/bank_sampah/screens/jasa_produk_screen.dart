import 'package:flutter/material.dart';

class JasaProdukScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jasa/Produk'),
      ),
      body: ListView.builder(
        itemCount: 5, // Ganti dengan jumlah artikel edukasi sebenarnya
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.school),
            title: Text('Jasa $index'),
            subtitle: Text('Detail jasa $index'),
            onTap: () {
              // Tambahkan logika untuk melihat detail edukasi
            },
          );
        },
      ),
    );
  }
}
