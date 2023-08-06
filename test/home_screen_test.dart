import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task/view/home_screen.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: HomeScreen()));
    expect(find.byKey(const Key(listViewKey)), findsOneWidget);
    expect(find.byKey(const Key(safeAreaKey)), findsOneWidget);
    expect(find.byKey(const Key(scaffoldKey)), findsOneWidget);
    expect(find.byKey(const Key(containerKey)), findsOneWidget);
  });
}
