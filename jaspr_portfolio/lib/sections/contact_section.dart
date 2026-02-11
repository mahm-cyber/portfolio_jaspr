import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../components/buttons.dart';
import '../constants/theme.dart';

class ContactSection extends StatelessComponent {
  const ContactSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(classes: 'contact-section', [
      div(classes: 'contact-container', [
        h2([text('Have an Awesome Project Idea?'), br(), text('Let’s Discuss')]),
        div(classes: 'email-input-group', [
          img(src: 'images/sms.svg', width: 24, height: 24),
          input(type: InputType.email, attributes: {'placeholder': 'Enter Email Address'}, classes: 'email-input'),
          PrimaryButton(label: 'Send', onClick: () {}),
        ]),
        div(classes: 'features-row', [
          div(classes: 'feature', [
             img(src: 'images/star.svg', width: 16, height: 16), // Placeholder icon
             text('4.9/5 Average Ratings'),
          ]),
          div(classes: 'feature', [
             img(src: 'images/award.svg', width: 16, height: 16), // Placeholder icon
             text('25+ Winning Awards'),
          ]),
          div(classes: 'feature', [
             img(src: 'images/shield-tick.svg', width: 16, height: 16), // Placeholder icon
             text('Certified Product Designer'),
          ]),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.contact-section', [
      css('&').styles(
        padding: Padding.symmetric(vertical: 80.px, horizontal: 20.px),
        display: Display.flex,
        justifyContent: JustifyContent.center,
        width: 100.percent,
      ),
      css('.contact-container').styles(
        display: Display.flex,
        flexDirection: FlexDirection.column,
        alignItems: AlignItems.center,
        textAlign: TextAlign.center,
        maxWidth: 800.px,
        width: 100.percent,
      ),
      css('h2').styles(
        fontSize: 48.px,
        color: AppColors.textPrimary,
        lineHeight: 1.2.em,
        margin: Margin.only(bottom: 40.px),
      ),
      css('.email-input-group').styles(
        display: Display.flex,
        backgroundColor: AppColors.surface,
        padding: Padding.all(8.px),
        radius: BorderRadius.circular(50.px),
        width: 100.percent,
        maxWidth: 500.px,
        margin: Margin.only(bottom: 40.px),
        border: Border.all(color: AppColors.secondary, width: 1.px),
      ),
      css('.email-input').styles(
        flex: Flex.grow(1),
        backgroundColor: Colors.transparent,
        border: Border.unset,
        padding: Padding.symmetric(horizontal: 24.px),
        color: AppColors.textPrimary,
        fontSize: 16.px,
        outline: Outline.unset,
      ),
      css('.features-row').styles(
        display: Display.flex,
        gap: Gap.all(32.px),
        flexWrap: FlexWrap.wrap,
        justifyContent: JustifyContent.center,
      ),
      css('.feature').styles(
        display: Display.flex,
        gap: Gap.all(8.px),
        alignItems: AlignItems.center,
        color: AppColors.textSecondary,
        fontSize: 14.px,
      ),
    ]),
  ];
}
