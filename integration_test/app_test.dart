import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

// ignore: avoid_relative_lib_imports
import '../lib/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('end-to-end-test', () {
    testWidgets('Navigating to all screens', (tester) async {
      await tester.pumpWidget(const app.MyApp());
      await tester.pumpAndSettle();

      expect(find.text('Hello!'), findsOneWidget);
      await tester.pump(const Duration(seconds: 2));
      await tester.tap(find.byKey(const Key('first')));
      await tester.pumpAndSettle();

      expect(find.text('Hola!'), findsOneWidget);
      await tester.pump(const Duration(seconds: 2));
      await tester.tap(find.byKey(const Key('second')));
      await tester.pumpAndSettle();

      expect(find.text('Namaste!'), findsOneWidget);
      await tester.pump(const Duration(seconds: 2));
      await tester.tap(find.byKey(const Key('third')));
      await tester.pumpAndSettle();

      expect(find.text('Hello!'), findsOneWidget);
      await tester.pump(const Duration(seconds: 3));
    });
  });
}
