import 'package:flutter/material.dart';
import 'package:flutter_app/models/sandwich.dart';

class SandwichCard extends StatelessWidget {
  final Sandwich sandwich;

  const SandwichCard({super.key, required this.sandwich});

    @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                sandwich.imagePath,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ],
          )],
        ),
      ),
    );
  }
}
