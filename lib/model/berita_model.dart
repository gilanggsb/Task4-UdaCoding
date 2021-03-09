import 'dart:convert';
import 'package:http/http.dart' as http;

class Berita {
  Future<List> getBerita() async {
    final response = await http
        .get(Uri.http('192.168.0.14', 'flutter-server/get_berita.php'));
    return json.decode(response.body);
  }
}