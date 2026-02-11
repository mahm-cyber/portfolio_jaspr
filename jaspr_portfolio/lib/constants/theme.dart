import 'package:jaspr/dom.dart';

class AppColors {
  // Primary Dark Background (from Figma)
  static const Color background = Color('#1F1F1F'); // Inferred dark grey
  static const Color surface = Color('#262626'); // Slightly lighter for cards

  // Accent Orange (from Figma)
  static const Color primary = Color('#FD853A');
  static const Color secondary = Color('#404040'); // Darker grey for buttons

  // Text Colors
  static const Color textPrimary = Color('#FFFFFF');
  static const Color textSecondary = Color('#9CA3AF');
  static const Color textDark = Color('#171717'); // For text on orange buttons

  // Error Colors
  static const Color error = Color('#FF4444');
  static const Color errorAccent = Color('#FFE6E6');
}

class AppTextStyles {
  static const String fontFamily = 'Plus Jakarta Sans, sans-serif';

  static Styles get heroTitle => Styles(
    color: AppColors.primary,
    fontSize: 48.px,
    fontWeight: FontWeight.bold,
    raw: {'font-family': fontFamily},
  );

  static Styles get sectionTitle => Styles(
    color: AppColors.primary,
    fontSize: 32.px,
    fontWeight: FontWeight.bold,
    raw: {'font-family': fontFamily},
  );

  static Styles get body => Styles(
    color: AppColors.textSecondary,
    fontSize: 16.px,
    lineHeight: 1.5.rem,
    raw: {'font-family': fontFamily},
  );

  static Styles get navItem => Styles(
    color: AppColors.textPrimary,
    fontSize: 14.px,
    fontWeight: FontWeight.w500,
    raw: {'font-family': fontFamily},
  );

  static Styles get navItemActive => Styles(
    color: AppColors.textPrimary,
    fontSize: 14.px,
    fontWeight: FontWeight.bold,
    raw: {'font-family': fontFamily},
  );
}

// Global styles
List<StyleRule> get globalStyles => [
  const StyleRule.import('https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;700&display=swap'),
  StyleRule(
    selector: const Selector.list([Selector.tag('body'), Selector.tag('html')]),
    styles: Styles.combine([
      Styles(
        width: 100.percent,
        height: 100.percent,
        padding: Padding.all(0.px),
        margin: Margin.all(0.px),
        color: AppColors.textPrimary,
        backgroundColor: AppColors.background,
      ),
      Styles(raw: {'font-family': AppTextStyles.fontFamily}),
    ]),
  ),
];
