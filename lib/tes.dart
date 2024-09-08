import 'package:flutter/material.dart';

void main() => runApp(MyApp3());

class MyApp3 extends StatelessWidget {
  const MyApp3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.brown,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Poppins', // Set the default font family
      ),
      home: LibraryScreen(),
    );
  }
}

class LibraryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.library_books, size: 30),
            SizedBox(width: 10),
            Text(
              "Perpustakaan Digital",
            ),
          ],
        ),
        backgroundColor: Colors.blue[200],
      ),
      drawer: LibraryDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: const TextField(
                decoration: InputDecoration(
                  labelText: 'Cari Buku...',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            // Categories
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Text(
                'Kategori Buku',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown[700],
                ),
              ),
            ),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                      title: 'Fiksi', icon: Icons.book, color: Colors.amber),
                  SizedBox(width: 10),
                  CategoryCard(
                      title: 'Non-Fiksi',
                      icon: Icons.import_contacts,
                      color: Colors.green),
                  SizedBox(width: 10),
                  CategoryCard(
                      title: 'Sci-Fi',
                      icon: Icons.alternate_email,
                      color: Colors.blue),
                  SizedBox(width: 10),
                  CategoryCard(
                      title: 'Biografi',
                      icon: Icons.person,
                      color: Colors.pink),
                ],
              ),
            ),
            // Featured Books
            Text(
              'Rekomendasi Buku',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.brown[700],
              ),
            ),
            Container(
              height: 200,
              margin: EdgeInsets.only(bottom: 20),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  FeaturedBookCard(
                    title: 'Atomic Habits',
                    author: 'James clear',
                    imageUrl: 'https://via.placeholder.com/150',
                  ),
                  SizedBox(width: 10),
                  FeaturedBookCard(
                    title: 'Good Vibes Good Life',
                    author: 'Penulis Y',
                    imageUrl: 'https://via.placeholder.com/150',
                  ),
                  SizedBox(width: 10),
                  FeaturedBookCard(
                    title: 'Buku Terbaru 3',
                    author: 'Penulis Z',
                    imageUrl: 'https://via.placeholder.com/150',
                  ),
                ],
              ),
            ),
            // Book List
            Text(
              'Daftar Buku',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.brown[700],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  BookCard(
                    title: 'Buku Fiksi 1',
                    author: 'Penulis A',
                    imageUrl: 'https://via.placeholder.com/100',
                  ),
                  BookCard(
                    title: 'Buku Non-Fiksi 1',
                    author: 'Penulis B',
                    imageUrl: 'https://via.placeholder.com/100',
                  ),
                  BookCard(
                    title: 'Buku Sci-Fi 1',
                    author: 'Penulis C',
                    imageUrl: 'https://via.placeholder.com/100',
                  ),
                  // Add more BookCards as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LibraryDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue[200],
            ),
            child: Text(
              'Menu Perpustakaan',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Beranda'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.category),
            title: Text('Kategori'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorit'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Pengaturan'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;

  const CategoryCard(
      {required this.title,
      required this.icon,
      required this.color,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 30, color: Colors.white),
          SizedBox(width: 10),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class FeaturedBookCard extends StatelessWidget {
  final String title;
  final String author;
  final String imageUrl;

  const FeaturedBookCard({
    required this.title,
    required this.author,
    required this.imageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: Card(
        elevation: 5,
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(imageUrl, height: 100, width: 150, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(author),
            ),
          ],
        ),
      ),
    );
  }
}

class BookCard extends StatelessWidget {
  final String title;
  final String author;
  final String imageUrl;

  const BookCard({
    required this.title,
    required this.author,
    required this.imageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: Image.network(imageUrl),
        title: Text(title),
        subtitle: Text(author),
      ),
    );
  }
}
