import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/models/sandwich.dart';

void main() {
  group('Sandwich model tests', () {
    test('creates sandwich instance with given properties', () {
      const sandwich = Sandwich(
        id: 'veggie',
        name: 'veggie Sub',
        description: 'Loaded with fresh vegetables.',
        price: 5.25,
        imagePath: 'assets/images/footlong1.jpeg',
      );
      expect(sandwich.id, 'veggie');
      expect(sandwich.name, 'veggie Sub');
      expect(sandwich.description, 'Loaded with fresh vegetables.');
      expect(sandwich.price, 5.25);
      expect(sandwich.imagePath, 'assets/images/footlong1.jpeg');
    });
    test(
      'formattedPrice returns price prifixed with pound sign and two decimals',
      () {
        const sandwich = Sandwich(
          id: 'footlong',
          name: 'Footlong Sub',
          description: 'Test description',
          price: 7.5,
          imagePath: 'asset/images/footlong1.jpeg',
        );

        expect(sandwich.formattedPrice, '£7.50');
      },
    );
  });
}
