import 'package:flutter/material.dart';
import 'package:flutter_testing/data/album_repo.dart';
import 'package:http/http.dart' as http;

import '../../../models/album.dart';

class AlbumUI extends StatefulWidget {
  const AlbumUI({super.key});

  @override
  State<AlbumUI> createState() => _AlbumUIState();
}

class _AlbumUIState extends State<AlbumUI> {
  late final Future<Album> futureAlbum;
  @override
  void initState() {
    super.initState();
    final client = http.Client();
    futureAlbum = AlbumData().fetchAlbumData(client);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Album Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.title);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              } else {
                return CircularProgressIndicator();
              }
            },
          ),
        ));
  }
}
