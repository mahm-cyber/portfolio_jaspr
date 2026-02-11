import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../constants/theme.dart';

@client
class About extends StatelessComponent {
  const About({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'about-page', [
      h1([text('About Me')]),
      div(classes: 'about-content', [
        p([
          text(
            'I am a passionate Product Designer and Developer with over 10 years of experience creating digital experiences. '
            'My journey started with graphic design and evolved into full-stack development, allowing me to bridge the gap between design and engineering.',
          ),
        ]),
        p([
          text(
            'I specialize in building accessible, performant, and beautiful web applications using modern technologies like Flutter, Dart, and Jaspr.',
          ),
        ]),
        h2([text('Experience')]),
        ul([
          li([text('Senior Product Designer @ Tech Corp (2020 - Present)')]),
          li([text('UI/UX Designer @ Creative Agency (2015 - 2020)')]),
          li([text('Junior Designer @ Startup Inc (2013 - 2015)')]),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.about-page', [
      css('&').styles(
        padding: .only(top: 100.px, bottom: 60.px),
        maxWidth: 800.px,
        margin: .symmetric(horizontal: .auto),
        width: 100.percent,
        display: Display.flex,
        flexDirection: FlexDirection.column,
        alignItems: AlignItems.center,
        textAlign: TextAlign.center,
      ),
      css('h1').styles(
        fontSize: 48.px,
        color: AppColors.primary,
        margin: .only(bottom: 40.px),
      ),
      css('.about-content').styles(
        fontSize: 18.px,
        lineHeight: 1.6.em,
        color: AppColors.textSecondary,
      ),
      css('p').styles(
        margin: .only(bottom: 24.px),
      ),
      css('h2').styles(
        fontSize: 32.px,
        color: AppColors.primary,
        margin: .only(top: 40.px, bottom: 20.px),
      ),
      css('ul').styles(
        listStyle: ListStyle.none,
        padding: .zero,
      ),
      css('li').styles(
        padding: .all(16.px),
        margin: .only(bottom: 12.px),
        backgroundColor: AppColors.surface,
        radius: .circular(12.px),
        fontWeight: FontWeight.w500,
        color: AppColors.textPrimary,
      ),
    ]),
  ];
}
