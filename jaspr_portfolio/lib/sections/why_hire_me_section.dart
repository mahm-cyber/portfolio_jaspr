import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../components/buttons.dart';
import '../constants/theme.dart';

class WhyHireMeSection extends StatelessComponent {
  const WhyHireMeSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(classes: 'why-hire-me', [
      div(classes: 'hire-container', [
        div(classes: 'hire-image', [
           // Placeholder for "Woman pointing image"
           img(src: 'images/profile.png', alt: 'Why Hire Me', classes: 'hire-img-placeholder'), 
        ]),
        div(classes: 'hire-content', [
          h2([
            text('Why '),
            span(classes: 'highlight', [text('Hire me')]),
            text('?'),
          ]),
          p([text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis lacus nunc, posuere in justo vulputate, bibendum sodales.')]),
          div(classes: 'hire-stats', [
            div(classes: 'stat-item', [
              span(classes: 'stat-num', [text('450+')]),
              span(classes: 'stat-label', [text('Project Completed')]),
            ]),
            div(classes: 'stat-item', [
              span(classes: 'stat-num', [text('450+')]),
              span(classes: 'stat-label', [text('Project Completed')]),
            ]),
          ]),
          PrimaryButton(label: 'Hire me', href: '/contact', isOutlined: true),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.why-hire-me', [
      css('&').styles(
        padding: Padding.symmetric(vertical: 80.px, horizontal: 20.px),
        width: 100.percent,
        display: Display.flex,
        justifyContent: JustifyContent.center,
      ),
      css('.hire-container').styles(
        display: Display.flex,
        backgroundColor: AppColors.surface, // Light rounded container? Figma says surface is light?
        // Wait, theme surface is #262626 (dark). Blueprint says "Light rounded container" but theme is dark.
        // I'll stick to dark theme consistency unless specified otherwise.
        radius: BorderRadius.circular(40.px),
        padding: Padding.all(60.px),
        maxWidth: 1200.px,
        width: 100.percent,
        alignItems: AlignItems.center,
        gap: Gap.all(60.px),
      ),
      css('.hire-image').styles(
        width: 40.percent,
        display: Display.flex,
        justifyContent: JustifyContent.center,
      ),
      css('.hire-img-placeholder').styles(
        width: 100.percent,
        maxWidth: 300.px,
        radius: BorderRadius.circular(20.px),
      ),
      css('.hire-content').styles(
        width: 60.percent,
        display: Display.flex,
        flexDirection: FlexDirection.column,
        alignItems: AlignItems.start,
        gap: Gap.all(24.px),
      ),
      css('h2').styles(
        fontSize: 48.px,
        color: AppColors.textPrimary,
        fontWeight: FontWeight.bold,
      ),
      css('.highlight').styles(
        color: AppColors.primary,
      ),
      css('p').styles(
        color: AppColors.textSecondary,
        fontSize: 18.px,
        lineHeight: 1.6.em,
      ),
      css('.hire-stats').styles(
        display: Display.flex,
        gap: Gap.all(40.px),
        margin: Margin.symmetric(vertical: 20.px),
      ),
      css('.stat-item').styles(
        display: Display.flex,
        flexDirection: FlexDirection.column,
      ),
      css('.stat-num').styles(
        fontSize: 32.px,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
      ),
      css('.stat-label').styles(
        fontSize: 14.px,
        color: AppColors.textSecondary,
      ),
      
      // Responsive
      css('@media (max-width: 900px)', [
        css('.hire-container').styles(
          flexDirection: FlexDirection.column,
          padding: Padding.all(30.px),
          textAlign: TextAlign.center,
        ),
        css('.hire-image, .hire-content').styles(width: 100.percent),
        css('.hire-content').styles(alignItems: AlignItems.center),
        css('.hire-stats').styles(justifyContent: JustifyContent.center),
      ]),
    ]),
  ];
}
