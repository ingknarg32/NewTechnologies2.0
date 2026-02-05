// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:myapp/main.dart';

void main() {
  testWidgets('EcoLog widget builds', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    // The original test failed because it was looking for a `MyApp` widget
    // and counter logic that no longer exist.
    // This test simply verifies that the main widget `EcoLog` can be built without crashing.
    await tester.pumpWidget(MaterialApp(home: EcoLog()));

    // Verify that the EcoLog widget is present.
    expect(find.byType(EcoLog), findsOneWidget);
  });
}
