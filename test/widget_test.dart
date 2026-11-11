import 'package:flutter_test/flutter_test.dart';
import 'package:myportofolio_mobile/main.dart';

void main() {
  testWidgets('Home page shows info cards and shows SnackBar on tap',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Burhan'), findsOneWidget);
    expect(find.text('View Projects'), findsOneWidget);

    await tester.tap(find.text('View Projects'));
    await tester.pump();

    expect(find.text('You pressed the View Projects button!'), findsOneWidget);
  });
}
