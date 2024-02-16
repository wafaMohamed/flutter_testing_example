import 'package:flutter/material.dart';
import 'package:flutter_testing/view/pages/album_ui/album_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: AlbumUI(),
    );
  }
}
// 1- for interactive showcase
//const InteractiveShowcasePage(),
// 2- for codelab flutter example
/*
import 'package:flutter/material.dart';
import 'package:flutter_testing/models/favorites.dart';
import 'package:flutter_testing/utils/route/router/router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<FavoritesProvider>(
      create: (context) => FavoritesProvider(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
*/
// 3- for album example
// const AlbumUI
