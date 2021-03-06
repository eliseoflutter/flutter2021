import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'counter_page.dart';

void main() {
  testWidgets('CounterPage', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: CounterPage(),
    ));
    expect(find.text("0"), findsOneWidget);
    // final button = find.byType(TextButton);
    final button = find.byKey(Key('add'));
    await tester.tap(button);
    await tester.pump();
    expect(find.text("1"), findsOneWidget);
    await tester.tap(button);
    await tester.tap(button);
    await tester.tap(button);
    await tester.pump();
    expect(find.text("4"), findsOneWidget);
  });
}
