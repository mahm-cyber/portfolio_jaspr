import 'package:jaspr_portfolio/components/buttons.dart';
import 'package:jaspr_test/jaspr_test.dart';

void main() {
  group('Components', () {
    testComponents('PrimaryButton renders correctly', (tester) async {
      tester.pumpComponent(
        PrimaryButton(label: 'Click Me', onClick: () {}),
      );

      expect(find.text('Click Me'), findsOneComponent);
      expect(find.tag('button'), findsOneComponent);
    });
  });
}
