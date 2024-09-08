import 'package:flutter/material.dart';

class PulsaDataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pulsa/Data'),
      ),
      body: ListView.builder(
        itemCount: 10, // Ganti dengan jumlah produk sebenarnya
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Produk $index'),
            subtitle: Text('Detail produk $index'),
            onTap: () {
              // Tambahkan logika untuk melihat detail produk
            },
          );
        },
      ),
    );
  }
}
