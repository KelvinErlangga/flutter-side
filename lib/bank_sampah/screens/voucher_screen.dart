import 'package:flutter/material.dart';

class VoucherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Voucher'),
      ),
      body: ListView.builder(
        itemCount: 10, // Ganti dengan jumlah riwayat sebenarnya
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.history),
            title: Text('Riwayat voucher $index'),
            subtitle: Text('Detail voucher $index'),
            onTap: () {
              // Tambahkan logika untuk melihat detail riwayat
            },
          );
        },
      ),
    );
  }
}
