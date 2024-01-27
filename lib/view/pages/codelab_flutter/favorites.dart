import 'package:flutter/material.dart';
import 'package:flutter_testing/models/favorites.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../widgets/codelab_flutter_widgets/favorites_item_tile.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              GoRouter.of(context).pop();
            }),
      ),
      body: Consumer<FavoritesProvider>(
        builder: (context, value, child) => ListView.builder(
          itemCount: value.favoritesItems.length,
          itemBuilder: (context, index) => FavoriteItemTile(
            itemNumber: value.favoritesItems[index],
          ),
        ),
      ),
    );
  }
}
