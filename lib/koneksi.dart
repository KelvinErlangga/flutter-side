import 'package:mysql1/mysql1.dart';

class DatabaseConnection {
  static Future<MySqlConnection> getConnection() async {
    return await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      password: '',
      db: 'belajar_flutter',
    ));
  }
}
