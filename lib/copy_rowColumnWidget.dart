import 'dart:async';

import 'package:mysql1/mysql1.dart';

Future main() async {
  // Open a connection (testdb should already exist)
  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'belajar_flutter',
      password: ''));

  // Query the database to retrieve data from the users table
  var results = await conn.query('select nim, nama, mata_kuliah from data_mhs');

  if (results.isNotEmpty) {
    for (var row in results) {
      print('nim: ${row[0]}, nama: ${row[1]} mata_kuliah: ${row[2]}');
    }
  } else {
    print("No data found.");
  }

  // Finally, close the connection
  await conn.close();
}
