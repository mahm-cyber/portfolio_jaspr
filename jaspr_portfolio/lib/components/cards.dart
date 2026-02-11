import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../constants/theme.dart';

class ProjectCard extends StatelessComponent {
  final String title;
  final String description;
  final String imageUrl;
  final List<String> tags;

  const ProjectCard({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.tags,
    super.key,
  });

  @override
  Component build(BuildContext context) {
    return div(classes: 'project-card', [
      div(classes: 'card-image', [
        img(src: imageUrl, alt: title),
      ]),
      div(classes: 'card-content', [
        h3([text(title)]),
        p([text(description)]),
        div(classes: 'tags', [
          for (var tag in tags) span(classes: 'tag', [text(tag)]),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.project-card', [
      css('&').styles(
        backgroundColor: AppColors.surface,
        radius: BorderRadius.circular(20.px),
        shadow: BoxShadow(offsetX: 0.px, offsetY: 0.px, blur: 10.px, color: const Color('#0000001A')), // 0.1 opacity
        overflow: Overflow.hidden,
        transition: const Transition('transform', duration: Duration(milliseconds: 300)),
      ),
      css('&:hover').styles(
        transform: Transform.translate(y: (-5).px),
      ),
      css('.card-image img').styles(
        width: 100.percent,
        height: 200.px,
        raw: {'object-fit': 'cover'},
      ),
      css('.card-content').styles(
        padding: Padding.all(20.px),
      ),
      css('h3').styles(
        color: AppColors.primary,
        fontSize: 20.px,
        fontWeight: FontWeight.bold,
        margin: Margin.only(bottom: 8.px),
      ),
      css('p').styles(
        color: AppColors.textSecondary,
        fontSize: 14.px,
        lineHeight: 1.5.rem,
      ),
      css('.tags').styles(
        display: Display.flex,
        flexWrap: FlexWrap.wrap,
        raw: {'gap': '8px'},
        margin: Margin.only(top: 16.px),
      ),
      css('.tag').styles(
        backgroundColor: AppColors.background,
        padding: Padding.symmetric(horizontal: 12.px, vertical: 4.px),
        radius: BorderRadius.circular(12.px),
        fontSize: 12.px,
        color: AppColors.textSecondary,
        border: Border.all(color: AppColors.secondary, width: 1.px),
      ),
    ]),
  ];
}

class StatsCard extends StatelessComponent {
  final String number;
  final String label;

  const StatsCard({required this.number, required this.label, super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'stats-card', [
      span(classes: 'number', [text(number)]),
      span(classes: 'label', [text(label)]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.stats-card', [
      css('&').styles(
        display: Display.flex,
        flexDirection: FlexDirection.column,
        alignItems: AlignItems.center,
        padding: Padding.all(24.px),
        backgroundColor: AppColors.surface,
        radius: BorderRadius.circular(20.px),
        shadow: BoxShadow(offsetX: 0.px, offsetY: 0.px, blur: 20.px, color: const Color('#0000000D')), // 0.05 opacity
      ),
      css('.number').styles(
        fontSize: 36.px,
        fontWeight: FontWeight.bold,
        color: AppColors.primary,
      ),
      css('.label').styles(
        fontSize: 14.px,
        color: AppColors.textSecondary,
        margin: Margin.only(top: 4.px),
      ),
    ]),
  ];
}

