import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/models/favorites.dart';

// Unit Testing
void main() {
  group('Unit Testing: test model provider ', () {
    var favoritesModel = FavoritesProvider();
    // test add method
    test('New Item Should be Added', () {
      var num = 30;
      favoritesModel.addFavoriteItem(num);
      expect(favoritesModel.favoritesItems.contains(num), true);
    });
    // test remove method
    test('Item Should be Removed', () {
      var num2 = 31;
      favoritesModel.addFavoriteItem(num2);
      print('Before removal: ${favoritesModel.favoritesItems}');
      expect(favoritesModel.favoritesItems.contains(num2), true);
      favoritesModel.removeFavoriteItem(num2);
      print('After removal: ${favoritesModel.favoritesItems}');
      expect(favoritesModel.favoritesItems.contains(num2), false);
    });
  });
}
