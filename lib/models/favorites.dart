import 'package:flutter/material.dart';

/// The [Favorites] class holds a list of favorite items saved by the user.
class FavoritesProvider extends ChangeNotifier {
  final List<int> _favoritesItems = [];

  List<int> get favoritesItems => _favoritesItems;

  // Add 2 Function for adding and removing items from the list
  void addFavoriteItem(int item) {
    _favoritesItems.add(item);
    notifyListeners();
  }

  void removeFavoriteItem(int item) {
    _favoritesItems.removeWhere((element) => element == item);
    notifyListeners();
  }
  // removeWhere method to remove all occurrences of the specified item
}
// summary:
// notifyListeners, it tells Flutter to rebuild any widgets that are currently listening to this object.This is particularly useful in scenarios where you have widgets in your app that depend on the state of this object.
// When the state changes (in this case, when an item is removed from _favoritesItems), the widgets can be rebuilt to reflect the updated state.
// ChangeNotifier class that holds the state of your application, such as the list of favorite items. This class provides methods to add and remove favorite items from the list,
// and widgets can listen to changes in that state using the Consumer widget or the Provider.of method. When the state changes, the relevant widgets automatically rebuild to reflect the updated information.
