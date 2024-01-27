import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Unit test to check list increment based on current index", () {
    int currentIndex = 0;
    final list = ["a", "b", "c"];
    void incrementFunction() {
      currentIndex = (currentIndex + 1) % list.length;
    }

    // * Verify initial state
    expect(currentIndex, 0);

    // * Call incrementFunction and verify the new state
    incrementFunction();
    expect(currentIndex, 1);
    // * Add more test as needed
    incrementFunction();
    expect(currentIndex, 2);
    /*
  * Try to fail the test by adding index out of range
    incrementFunction();
    expect(currentIndex, 5);
*/
  });
}
