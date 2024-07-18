import 'package:flutter_test/flutter_test.dart';
import 'package:recipeapp/main.dart';

void main() {
  testWidgets('App loads and displays Home Screen', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.text('Recipe App'), findsOneWidget);
  });
}
