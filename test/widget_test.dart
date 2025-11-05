import 'package:flutter_test/flutter_test.dart';
import 'package:flashcard_app/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that our start screen is shown.
    expect(find.text('Flashcard App'), findsOneWidget);
    expect(find.text('Start Learning'), findsOneWidget);
  });
}