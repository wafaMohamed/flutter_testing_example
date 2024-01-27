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
        ));
  }
}
//const IncrementFunctionPage(),
