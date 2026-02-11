import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../constants/theme.dart';

class ExperienceSection extends StatelessComponent {
  const ExperienceSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(classes: 'experience', [
      div(classes: 'experience-header', [
        h2([text('My Work Experience')]),
      ]),
      div(classes: 'timeline', [
        div(classes: 'timeline-item', [
          div(classes: 'timeline-left', [
            h3([text('Cognizant, Mumbai')]),
            span(classes: 'timeline-date', [text('Sep 2016 - July 2020')]),
          ]),
          div(classes: 'timeline-dot', []),
          div(classes: 'timeline-right', [
            h3([text('Experience Designer')]),
            p([text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.')]),
          ]),
        ]),
        div(classes: 'timeline-item', [
          div(classes: 'timeline-left', [
            h3([text('Sugee Pvt Limited, Mumbai')]),
            span(classes: 'timeline-date', [text('Sep 2020 - July 2023')]),
          ]),
          div(classes: 'timeline-dot', []),
          div(classes: 'timeline-right', [
            h3([text('UI/UX Designer')]),
            p([text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.')]),
          ]),
        ]),
        div(classes: 'timeline-item', [
          div(classes: 'timeline-left', [
            h3([text('Cinetstox, Mumbai')]),
            span(classes: 'timeline-date', [text('Sep 2023')]),
          ]),
          div(classes: 'timeline-dot', []),
          div(classes: 'timeline-right', [
            h3([text('Lead UX Designer')]),
            p([text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.')]),
          ]),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.experience', [
      css('&').styles(
        display: Display.flex,
        flexDirection: FlexDirection.column,
        padding: Padding.symmetric(vertical: 60.px, horizontal: 20.px),
        alignItems: AlignItems.center,
        width: 100.percent,
      ),
      css('h2').styles(
        fontSize: 48.px,
        color: AppColors.textPrimary,
        margin: Margin.only(bottom: 60.px),
        textAlign: TextAlign.center,
      ),
      css('.timeline').styles(
        display: Display.flex,
        flexDirection: FlexDirection.column,
        width: 100.percent,
        maxWidth: 1000.px,
        position: Position.relative(),
      ),
      // Vertical Line
      css('.timeline::before').styles(
        content: '',
        position: Position.absolute(top: 0.px, bottom: 0.px, left: 50.percent),
        width: 2.px,
        backgroundColor: AppColors.secondary,
        transform: Transform.translate(x: (-50).percent),
      ),
      css('.timeline-item').styles(
        display: Display.flex,
        justifyContent: JustifyContent.spaceBetween,
        alignItems: AlignItems.center,
        width: 100.percent,
        margin: Margin.only(bottom: 40.px),
        position: Position.relative(),
      ),
      css('.timeline-left, .timeline-right').styles(
        width: 45.percent,
        display: Display.flex,
        flexDirection: FlexDirection.column,
      ),
      css('.timeline-left').styles(
        alignItems: AlignItems.end,
        textAlign: TextAlign.right,
      ),
      css('.timeline-right').styles(
        alignItems: AlignItems.start,
        textAlign: TextAlign.left,
      ),
      css('.timeline-dot').styles(
        width: 20.px,
        height: 20.px,
        radius: BorderRadius.circular(10.px),
        backgroundColor: AppColors.primary,
        border: Border.all(color: AppColors.background, width: 4.px),
        position: Position.absolute(left: 50.percent),
        transform: Transform.translate(x: (-50).percent),
        zIndex: ZIndex(1),
      ),
      css('h3').styles(
        fontSize: 24.px,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
        margin: Margin.only(bottom: 8.px),
      ),
      css('.timeline-date').styles(
        fontSize: 16.px,
        color: AppColors.primary,
        fontWeight: FontWeight.w500,
      ),
      css('p').styles(
        fontSize: 16.px,
        color: AppColors.textSecondary,
      ),
      // Responsive
      css('@media (max-width: 768px)', [
        css('.timeline::before').styles(raw: {'left': '20px'}),
        css('.timeline-item').styles(
          flexDirection: FlexDirection.column,
          alignItems: AlignItems.start,
          padding: Padding.only(left: 50.px),
        ),
        css('.timeline-left, .timeline-right').styles(
          width: 100.percent,
          alignItems: AlignItems.start,
          textAlign: TextAlign.left,
        ),
        css('.timeline-left').styles(margin: Margin.only(bottom: 8.px)),
        css('.timeline-dot').styles(raw: {'left': '20px'}),
      ]),
    ]),
  ];
}
