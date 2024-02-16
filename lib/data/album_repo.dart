import 'dart:convert';

import 'package:flutter_testing/models/album.dart';
import 'package:http/http.dart' as http;

class AlbumData {
  Future<Album> fetchAlbumData(http.Client client) async {
    final response = await client
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
    if (response.statusCode == 200) {
      // If server return 200 OK then parse the JSON.
      return Album.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception("Failed to load album");
    }
  }
}
