import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/widgets/primary_button.dart';

void main() {
  testWidgets('PrimaryButton invokes onPressed when tapped',
    (WidgetTester tester) async {
  bool wasPressed = false;

  await tester.pumpWidget(
    MaterialApp(
      home: Scaffold(
        body: PrimaryButton(
          label: 'Order',
          onPressed: () {
            wasPressed = true;
          }, child: const Text('Order'),
        ),
      ),
    ),
  );

  await tester.tap(find.text('Order'));
  await tester.pump();

    expect(find.text('Order'), findsOneWidget);
  });

  testWidgets('PrimaryButton invokes onPressed when tapped',
      (WidgetTester tester) async {
    bool wasPressed = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: PrimaryButton(
            label: 'Order',
            onPressed: () {
              wasPressed = true;
            }, child: const Text('Order')
          ),
        ),
      ),
    );

    await tester.tap(find.text('Order'));
    await tester.pump();

    expect(wasPressed, isTrue);
  });
}
