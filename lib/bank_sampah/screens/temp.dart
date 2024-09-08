import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../widgets/navigation_drawer.dart' as custom;

class HomeScreen extends StatelessWidget {
  final List<String> imgList = [
    'assets/image1.jpg',
    'assets/image2.jpg',
    'assets/image3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bank Sampah'),
      ),
      drawer: custom.NavigationDrawer(),
      body: Column(
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
            ),
            items: imgList.map((item) => Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                child: Image.asset(item, fit: BoxFit.cover, width: 1000),
              ),
            )).toList(),
          ),
          SizedBox(height: 16.0),  // Tambahkan padding antara carousel dan grid item
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                _buildGridItem(context, Icons.person, 'Profil', '/profile'),
                _buildGridItem(context, Icons.receipt, 'Transaksi', '/transactions'),
                _buildGridItem(context, Icons.history, 'Riwayat', '/history'),
                _buildGridItem(context, Icons.local_shipping, 'Penjemputan', '/request-pickup'),
                _buildGridItem(context, Icons.location_on, 'Bank Terdekat', '/nearby-banks'),
                _buildGridItem(context, Icons.school, 'Edukasi', '/education'),
                _buildGridItem(context, Icons.notifications, 'Notifikasi', '/notifications'),
                _buildGridItem(context, Icons.shopping_cart, 'E-commerce', '/e-commerce'),
                _buildGridItem(context, Icons.bar_chart, 'Statistik', '/statistics'),
                _buildGridItem(context, Icons.people, 'Komunitas', '/community'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGridItem(BuildContext context, IconData icon, String label, String route) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Card(
        margin: EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(icon, size: 40.0),
              SizedBox(height: 8.0),
              Text(label, textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}
