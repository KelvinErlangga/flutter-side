import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../widgets/navigation_drawer.dart' as custom;

class HomeScreen extends StatelessWidget {
  final List<String> imgList = [
    'assets/images/sampah1.jpg',
    'assets/images/sampah2.jpg',
    'assets/images/sampah3.jpg',
    'assets/images/sampah4.jpg',
    'assets/images/sampah5.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BersihKu',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      drawer: custom.NavigationDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16.0),
            color: Colors.green[400],
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Selamat Datang,\nKelvin Erlangga',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Icon(Icons.notifications, color: Colors.white),
                  ],
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Saldo Kamu',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Rp100,000',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Total Poin',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '8,900',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 16.0),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              padding: EdgeInsets.all(8.0),
              children: <Widget>[
                _buildGridItem(
                    context, Icons.monetization_on, 'Rupiah', '/rupiah'),
                _buildGridItem(
                    context, Icons.card_giftcard, 'Voucher', '/voucher'),
                _buildGridItem(
                    context, Icons.phone_android, 'Pulsa/Data', '/pulsa-data'),
                _buildGridItem(
                    context, Icons.volunteer_activism, 'Donasikan', '/donasi'),
                _buildGridItem(context, Icons.business_center, 'Jasa/Produk',
                    '/jasa-produk'),
                _buildGridItem(
                    context, Icons.more_horiz, 'Lain-lain', '/lain-lain'),
              ],
            ),
          ),
          SizedBox(height: 16.0),
          Container(
            height: 170.0, // Tinggi carousel diubah menjadi lebih kecil
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
              items: imgList
                  .map((item) => Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          child:
                              Image.asset(item, fit: BoxFit.cover, width: 1000),
                        ),
                      ))
                  .toList(),
            ),
          ),
          SizedBox(
              height: 120.0), // Padding antara carousel dan bagian bawah layar
        ],
      ),
    );
  }

  Widget _buildGridItem(
      BuildContext context, IconData icon, String label, String route) {
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
              Icon(icon, size: 30.0), // ukuran ikon dikurangi menjadi 30.0
              SizedBox(height: 4.0), // jarak antara ikon dan teks
              Text(label, textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}
