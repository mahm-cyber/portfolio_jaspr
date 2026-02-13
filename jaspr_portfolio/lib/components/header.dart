import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'buttons.dart';
import '../constants/theme.dart';
import '../constants/config.dart';

class Header extends StatelessComponent {
  const Header({super.key});

  @override
  Component build(BuildContext context) {
    var activePath = context.url;

    return header([
      nav([
        // Home
        CapsuleButton(
          label: 'Home',
          path: '$basePath/',
          isActive: activePath == '$basePath/',
        ),
        // About
        CapsuleButton(
          label: 'About',
          path: '$basePath/about',
          isActive: activePath == '$basePath/about',
          isOutlined: activePath != '$basePath/about',
        ),
        // Projects
        CapsuleButton(
          label: 'Projects',
          path: '$basePath/projects',
          isActive: activePath == '$basePath/projects',
          isOutlined: activePath != '$basePath/projects',
        ),
        // Contact
        CapsuleButton(
          label: 'Contact',
          path: '$basePath/contact',
          isActive: activePath == '$basePath/contact',
          isOutlined: activePath != '$basePath/contact',
        ),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('header', [
      css('&').styles(
        display: Display.flex,
        position: Position.fixed(top: 20.px, left: 50.percent),
        zIndex: ZIndex(1000),
        width: 100.percent,
        padding: .symmetric(horizontal: 20.px),
        transform: Transform.translate(x: (-50).percent),
        justifyContent: JustifyContent.center,
      ),
      css('nav', [
        css('&').styles(
          display: Display.flex,
          padding: Padding.all(8.px),
          radius: BorderRadius.circular(50.px),
          shadow: BoxShadow(offsetX: 0.px, offsetY: 4.px, blur: 20.px, color: const Color('#00000033')),
          gap: Gap.all(8.px),
          backgroundColor: AppColors.background,
          border: Border.all(color: AppColors.surface, width: 1.px),
        ),
      ]),
    ]),
  ];
}
