import 'package:flutter/material.dart';

void main() => runApp(MyApp7());

class MyApp7 extends StatelessWidget {
  MyApp7({super.key}); // Removed 'const' keyword

  final List<String> entries = <String>[
    'Artikel 1',
    'Artikel 2',
    'Artikel 3',
    'Artikel 4',
    'Artikel 5'
  ];
  final List<int> colorCodes = <int>[600, 500, 400, 300, 200];
  final List<String> images = <String>[
    'assets/images/logo_koala.png',
    'assets/images/logo_koala.png',
    'assets/images/logo_koala.png',
    'assets/images/logo_koala.png',
    'assets/images/logo_koala.png'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Poppins"),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List View Example'),
          backgroundColor: Colors.blue[200],
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blue[colorCodes[index]],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      images[index],
                      width: 150,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          entries[index],
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.thumb_up, color: Colors.white),
                            SizedBox(width: 5),
                            Text(
                              'Like',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(width: 20),
                            Icon(Icons.comment, color: Colors.white),
                            SizedBox(width: 5),
                            Text(
                              'Comment',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ),
      ),
    );
  }
}
