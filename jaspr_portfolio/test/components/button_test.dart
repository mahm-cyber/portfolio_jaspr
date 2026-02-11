import 'package:jaspr_portfolio/components/buttons.dart';
import 'package:jaspr_test/jaspr_test.dart';

void main() {
  group('Components', () {
    testComponents('CapsuleButton renders correctly', (tester) async {
      tester.pumpComponent(
        CapsuleButton(label: 'Home', path: '/', isActive: true),
      );

      expect(find.text('Home'), findsOneComponent);
      expect(find.tag('a'), findsOneComponent);
    });

    testComponents('PrimaryButton renders correctly', (tester) async {
      tester.pumpComponent(
        PrimaryButton(label: 'Click Me', onClick: () {}),
      );

      expect(find.text('Click Me'), findsOneComponent);
      expect(find.tag('button'), findsOneComponent);
    });
  });
}
