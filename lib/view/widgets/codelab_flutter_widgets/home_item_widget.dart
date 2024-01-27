import 'package:flutter/material.dart';
import 'package:flutter_testing/view/widgets/codelab_flutter_widgets/snack_bar_widget.dart';
import 'package:provider/provider.dart';

import '../../../models/favorites.dart';

class HomeItemTile extends StatelessWidget {
  const HomeItemTile({Key? key, required this.itemNumber}) : super(key: key);

  final int itemNumber;

  @override
  Widget build(BuildContext context) {
    var favoritesList = Provider.of<FavoritesProvider>(context);
    var itemContainsList = favoritesList.favoritesItems.contains(itemNumber);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(
          'Item: $itemNumber',
          key: Key('text_$itemNumber'),
        ),
        leading: CircleAvatar(
          backgroundColor:
              Colors.primaries[itemNumber % Colors.primaries.length],
        ),
        trailing: IconButton(
          key: Key('icon_$itemNumber'),
          icon: itemContainsList
              ? Icon(Icons.favorite)
              : Icon(Icons.favorite_border),
          onPressed: () {
            if (itemContainsList) {
              favoritesList.removeFavoriteItem(itemNumber);
              SnackBarHelper.snackBarWidget(
                context,
                'Removed from favorites.',
                Duration(seconds: 1),
              );
            } else {
              favoritesList.addFavoriteItem(itemNumber);
              SnackBarHelper.snackBarWidget(
                context,
                'Added to favorites.',
                Duration(seconds: 1),
              );
            }
          },
        ),
      ),
    );
  }
}
