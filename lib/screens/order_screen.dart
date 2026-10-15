import 'package:flutter/material.dart';
import 'package:flutter_app/models/sandwich.dart';

class OrderScreen extends StatefulWidget {
  final Sandwich sandwich;
  final int maxQuantity;

  const OrderScreen({super.key, required this.sandwich, this.maxQuantity = 10});

  @override
  State<OrderScreen> createState() {
    return _OrderScreenState();
  }
}

class _OrderScreenState extends State<OrderScreen> {
  int _quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order ${widget.sandwich.name}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OrderItemDisplay(quantity: _quantity, itemType: 'Footlong'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _increasedQuantity,
                  child: const Text('Add'),
                ),
                ElevatedButton(
                  onPressed: _decreasedQuantity,
                  child: const Text('Remove'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _increasedQuantity() {
    setState(() {
      _quantity++;
    });
  }

  void _decreasedQuantity() {
    if (_quantity > 0) {
      setState(() {
        _quantity--;
      });
    }
  }
}

class OrderItemDisplay extends StatelessWidget {
  final int quantity;
  final String itemType;

  const OrderItemDisplay({
    super.key,
    required this.quantity,
    required this.itemType,
  });

  @override
  Widget build(BuildContext context) {
    return Text('$quantity $itemType sandwich(es)');
  }
}
