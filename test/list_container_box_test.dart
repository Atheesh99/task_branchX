import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task/view/list_container_box.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: ItemOfContainerBox()));
    expect(find.byKey(const Key(paddingItemKey)), findsOneWidget);
    expect(find.byKey(const Key(safeAreaItemKey)), findsOneWidget);
    expect(find.byKey(const Key(scaffoldItemKey)), findsOneWidget);
    expect(find.byKey(const Key(containerItemKey)), findsOneWidget);
    expect(find.byKey(const Key(rowItemKey)), findsOneWidget);
    expect(find.byKey(const Key(imageItemKey)), findsOneWidget);
    expect(find.byKey(const Key(alignItemKey)), findsOneWidget);
  });
}
