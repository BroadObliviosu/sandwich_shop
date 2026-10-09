import 'package:flutter_app/models/sandwich.dart';

class SandwichRepository {
  List<Sandwich> getSandwiches() {
    return const [
      Sandwich(
        id: 'footlong',
        name: 'footlong sub',
        description:
            'A delicious footlong sandwich with your choice of fillings.',
        price: 7.50,
        imagePath: 'assets/images/footlong.png',
      ),
      Sandwich(
        id: 'six-inch',
        name: 'Six-inch sub',
        description: 'A tasty six-inch sandwich with your choice of fillings.',
        price: 4.50,
        imagePath: 'assets/images/six-inch.png',
      ),
    ];
  }
}
