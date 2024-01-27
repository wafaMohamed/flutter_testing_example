import 'package:go_router/go_router.dart';

import '../../../view/pages/codelab_flutter/favorites.dart';
import '../../../view/pages/codelab_flutter/home.dart';
import '../routes/routes.dart';

abstract class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const HomePage(),
      name: Routes.homeRoute,
    ),
    GoRoute(
      path: Routes.favoritesPageRoute,
      builder: (context, state) => const FavoritePage(),
      name: Routes.favoritesPageRoute,
    ),
  ]);
}
