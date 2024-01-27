import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/route/routes/routes.dart';
import '../../widgets/codelab_flutter_widgets/home_item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Testing Sample'),
        actions: <Widget>[
          TextButton.icon(
            onPressed: () {
              GoRouter.of(context).pushNamed(Routes.favoritesPageRoute);
            },
            icon: const Icon(Icons.favorite_border),
            label: const Text('Favorites'),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 100,
        cacheExtent: 20.0,
        padding: const EdgeInsets.symmetric(vertical: 16),
        itemBuilder: (context, index) => HomeItemTile(itemNumber: index),
      ),
    );
  }
}
