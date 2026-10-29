// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_foodybite/main.dart';

void main() {
  testWidgets('home loads and bottom navigation opens each section',
      (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.text('Trending Restaurants'), findsOneWidget);
    expect(find.text('Category'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.label));
    await tester.pumpAndSettle();
    expect(find.text('Label'), findsOneWidget);

    await tester.tap(find.byType(FloatingActionButton));
    await tester.pumpAndSettle();
    expect(find.text('Add'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.notifications));
    await tester.pumpAndSettle();
    expect(find.text('Notifications'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.person));
    await tester.pumpAndSettle();
    expect(find.text('Profile'), findsOneWidget);
  });
}
