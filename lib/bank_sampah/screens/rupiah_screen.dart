import 'package:flutter/material.dart';

class RupiahScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaksi'),
      ),
      body: ListView.builder(
        itemCount: 10, // Ganti dengan jumlah transaksi sebenarnya
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.receipt),
            title: Text('Transaksi $index'),
            subtitle: Text('Detail transaksi $index'),
            onTap: () {
              // Tambahkan logika untuk melihat detail transaksi
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Tambahkan logika untuk transaksi baru
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
