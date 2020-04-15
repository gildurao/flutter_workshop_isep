// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:exercise6/main.dart';

void main() {
  group(
    'Counter tests',
    () {
      testWidgets(
        'Counter increments smoke test without keys',
        (WidgetTester tester) async {
          // Build our app and trigger a frame.
          await tester.pumpWidget(MyApp());

          // Verify that our counter starts at 0.
          expect(find.text('0'), findsOneWidget);
          expect(find.text('1'), findsNothing);

          // Tap the '+' icon and trigger a frame.
          await tester.tap(find.byIcon(Icons.add));
          await tester.pump();

          // Verify that our counter has incremented.
          expect(find.text('0'), findsNothing);
          expect(find.text('1'), findsOneWidget);
        },
      );

      testWidgets(
        'Counter decrements smoke test without keys',
        (tester) async {
          // Write your test here!
        },
      );
      testWidgets(
        'Counter increments smoke test with keys',
        (WidgetTester tester) async {
          // Write your test here!
        },
      );

      testWidgets(
        'Counter decrements smoke test with keys',
        (tester) async {
          // Write your test here!
        },
      );

      testWidgets(
        'If counter is odd number, text color is teal',
        (tester) async {
          // Write your test here!
        },
      );
      testWidgets(
        'If counter is even number, text color is pink',
        (tester) async {
          // Write your test here!
        },
      );
    },
  );
}
