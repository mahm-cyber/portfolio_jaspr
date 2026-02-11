import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../constants/theme.dart';

class TestimonialSection extends StatelessComponent {
  const TestimonialSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(classes: 'testimonial-section', [
      h2([text('Testimonials That Speak to My Results')]),
      p([text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis lacus nunc, posuere in justo vulputate.')]),
      
      div(classes: 'testimonial-grid', [
        for(var i=0; i<3; i++) // Placeholder for 3 cards? Or slider? Blueprint says cards.
          div(classes: 'testimonial-card', [
            div(classes: 'card-header', [
              div(classes: 'profile-info', [
                div(classes: 'profile-img', []), // Placeholder
                div([
                   h4([text('Jayesh Patil')]),
                   div(classes: 'stars', [
                     for(var j=0; j<5; j++) img(src: 'images/star.svg', width: 16, height: 16)
                   ]),
                ]),
              ]),
              img(src: 'images/quote.svg', classes: 'quote-bg', alt: 'Quote'),
            ]),
            p([text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis lacus nunc, posuere in justo vulputate, bibendum sodales.')]),
          ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.testimonial-section', [
      css('&').styles(
        padding: Padding.symmetric(vertical: 80.px, horizontal: 20.px),
        display: Display.flex,
        flexDirection: FlexDirection.column,
        alignItems: AlignItems.center,
        width: 100.percent,
      ),
      css('h2').styles(
        fontSize: 48.px,
        color: AppColors.textPrimary,
        textAlign: TextAlign.center,
        margin: Margin.only(bottom: 20.px),
      ),
      css('p').styles(
        fontSize: 18.px,
        color: AppColors.textSecondary,
        textAlign: TextAlign.center,
        maxWidth: 600.px,
        margin: Margin.only(bottom: 60.px),
      ),
      css('.testimonial-grid').styles(
        display: Display.flex,
        gap: Gap.all(24.px),
        flexWrap: FlexWrap.wrap,
        justifyContent: JustifyContent.center,
        width: 100.percent,
      ),
      css('.testimonial-card').styles(
        backgroundColor: AppColors.surface,
        radius: BorderRadius.circular(30.px),
        padding: Padding.all(30.px),
        width: 100.percent,
        maxWidth: 350.px,
        position: Position.relative(),
      ),
      css('.card-header').styles(
        display: Display.flex,
        justifyContent: JustifyContent.spaceBetween,
        alignItems: AlignItems.start,
        margin: Margin.only(bottom: 20.px),
      ),
      css('.profile-info').styles(
        display: Display.flex,
        gap: Gap.all(16.px),
        alignItems: AlignItems.center,
      ),
      css('.profile-img').styles(
        width: 50.px,
        height: 50.px,
        radius: BorderRadius.circular(25.px),
        backgroundColor: AppColors.textSecondary, // Placeholder
      ),
      css('h4').styles(
        fontSize: 18.px,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
        margin: Margin.zero,
      ),
      css('.stars').styles(
        display: Display.flex,
        gap: Gap.all(4.px),
        margin: Margin.only(top: 4.px),
      ),
      css('.quote-bg').styles(
        width: 40.px,
        opacity: 0.2,
      ),
    ]),
  ];
}
