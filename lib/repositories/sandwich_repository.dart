import 'package:flutter_app/models/sandwich.dart';

class SandwichRepository {
  List<Sandwich> getSandwiches() {
    return const [
      Sandwich(
        id: 'Footlong',
        name: 'Footlong Sub',
        description:
            'A delicious footlong sandwich with your choice of fillings.',
        price: 7.50,
        imagePath: 'assets/images/footlong1.jpeg',
      ),
      Sandwich(
        id: 'six-inch',
        name: 'Six-Inch Sub',
        description: 'A tasty six-inch sandwich with your choice of fillings.',
        price: 4.50,
        imagePath: 'assets/images/six_inch1.jpeg',
      ),
    ];
  }
    Sandwich? getSandwichById(String id) { //sandwiches will return null if no sandwiches match
    for (final sandwich in getSandwiches()) {
      if (sandwich.id == id) {
        return sandwich;
      }
    }
    return null;
  }
}
