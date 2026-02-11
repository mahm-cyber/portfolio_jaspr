import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';
import '../constants/theme.dart';

class CapsuleButton extends StatelessComponent {
  final String label;
  final String path;
  final bool isActive;
  final bool isOutlined;

  const CapsuleButton({
    required this.label,
    required this.path,
    this.isActive = false,
    this.isOutlined = false,
    super.key,
  });

  @override
  Component build(BuildContext context) {
    return Link(
      to: path,
      child: text(label),
      classes: 'capsule-btn ${isActive ? 'active' : ''} ${isOutlined ? 'outlined' : ''}',
    );
  }

  @css
  static List<StyleRule> get styles => [
    css('.capsule-btn', [
      css('&').styles(
        display: Display.inlineBlock,
        padding: Padding.symmetric(horizontal: 24.px, vertical: 12.px),
        radius: BorderRadius.circular(60.px),
        cursor: Cursor.pointer,
        transition: const Transition('all', duration: Duration(milliseconds: 300), curve: Curve.ease),
        textDecoration: TextDecoration.none,
        fontFamily: const FontFamily.list([FontFamily(AppTextStyles.fontFamily)]),
        fontSize: 14.px,
        fontWeight: FontWeight.w500,
        color: AppColors.textPrimary,
      ),
      css('&.active').styles(
        backgroundColor: AppColors.primary,
        color: AppColors.textDark,
        fontWeight: FontWeight.bold,
      ),
      css('&.outlined').styles(
        border: Border.all(color: AppColors.surface, width: 1.px),
        color: AppColors.textPrimary,
      ),
      css('&:hover').styles(
        transform: Transform.scale(1.05),
      ),
    ]),
  ];
}

class PrimaryButton extends StatelessComponent {
  final String label;
  final VoidCallback? onClick;
  final String? href;
  final bool isOutlined;

  const PrimaryButton({
    required this.label, 
    this.onClick, 
    this.href, 
    this.isOutlined = false,
    super.key
  });

  @override
  Component build(BuildContext context) {
    if (href != null) {
      return a(
        href: href!,
        classes: 'primary-btn ${isOutlined ? 'outlined' : ''}',
        [text(label)],
      );
    }
    return button(
      classes: 'primary-btn ${isOutlined ? 'outlined' : ''}',
      onClick: onClick,
      [text(label)],
    );
  }

  @css
  static List<StyleRule> get styles => [
    css('.primary-btn', [
      css('&').styles(
        display: Display.inlineBlock,
        padding: Padding.symmetric(horizontal: 32.px, vertical: 16.px),
        radius: BorderRadius.circular(50.px),
        backgroundColor: AppColors.primary,
        color: AppColors.textDark,
        border: Border.unset,
        textDecoration: TextDecoration.none,
        fontWeight: FontWeight.bold,
        cursor: Cursor.pointer,
        transition: const Transition('transform', duration: Duration(milliseconds: 200)),
      ),
      css('&.outlined').styles(
        backgroundColor: Colors.transparent,
        border: Border.all(color: AppColors.textPrimary, width: 1.px),
        color: AppColors.textPrimary,
      ),
      css('&:hover').styles(
        transform: Transform.scale(1.05),
      ),
    ]),
  ];
}
