import 'package:flutter/material.dart';

class LainLainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lain-Lain'),
      ),
      body: ListView.builder(
        itemCount: 5, // Ganti dengan jumlah bank terdekat sebenarnya
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Lainnya $index'),
            subtitle: Text('Detail lainnya $index'),
            onTap: () {
              // Tambahkan logika untuk melihat detail bank terdekat
            },
          );
        },
      ),
    );
  }
}
