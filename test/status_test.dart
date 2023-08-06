import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task/view/status.dart';

void main() {
  testWidgets(
    'Counter increments smoke test',
    (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: StatusImage()));
      await tester.pump(const Duration(seconds: 4));
      expect(find.byKey(const Key(safeAreaStatusKey)), findsOneWidget);
      expect(find.byKey(const Key(scaffoldStatusKey)), findsOneWidget);
      expect(find.byKey(const Key(stackItemKey)), findsOneWidget);
      expect(find.byKey(const Key(containerStatusKey)), findsOneWidget);
    },
  );
}
