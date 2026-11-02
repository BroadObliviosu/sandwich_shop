import 'package:flutter_app/models/sandwich.dart';

class CartItem {
  final Sandwich sandwich;
  final int quantity;

  const CartItem({
    required this.sandwich,
    required this.quantity
  });

  double get linetotal{
    return sandwich.price * quantity;}
}