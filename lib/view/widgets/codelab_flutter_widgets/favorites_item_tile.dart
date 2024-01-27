import 'package:flutter/material.dart';
import 'package:flutter_testing/view/widgets/codelab_flutter_widgets/snack_bar_widget.dart';
import 'package:provider/provider.dart';

import '../../../models/favorites.dart';

class FavoriteItemTile extends StatelessWidget {
  const FavoriteItemTile({Key? key, required this.itemNumber})
      : super(key: key);

  final int itemNumber;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(
          'Item: $itemNumber',
          key: Key('favorites_text_$itemNumber'),
        ),
        leading: CircleAvatar(
          backgroundColor:
              Colors.primaries[itemNumber % Colors.primaries.length],
        ),
        trailing: IconButton(
          key: Key('remove icon $itemNumber'),
          icon: Icon(
            Icons.close,
            color: Colors.red[900],
          ),
          onPressed: () {
            Provider.of<FavoritesProvider>(context, listen: false)
                .removeFavoriteItem(itemNumber);
            //snack Bar
            SnackBarHelper.snackBarWidget(
              context,
              "Removed from favorites.",
              Duration(seconds: 1),
            );
          },
        ),
      ),
    );
  }
} // explanation:
// Provider.of method to get the FavoritesProvider instance from the widget tree.
// The listen parameter controls whether the widget should rebuild when the state of the provider changes.
// Setting listen to false means that the widget won't rebuild when the state changes.
