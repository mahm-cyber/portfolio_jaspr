import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../constants/theme.dart';
import '../constants/config.dart';

class FooterSection extends StatelessComponent {
  const FooterSection({super.key});

  @override
  Component build(BuildContext context) {
    return footer(classes: 'footer-section', [
      div(classes: 'footer-content', [
        div(classes: 'footer-brand', [
          h3([text('3CREA')]),
          p([
            text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis lacus nunc, posuere in justo vulputate.',
            ),
          ]),
          div(classes: 'social-icons', [
            a(href: '#', [img(src: 'images/facebook.svg', width: 24, height: 24)]),
            a(href: '#', [img(src: 'images/youtube.svg', width: 24, height: 24)]),
            a(href: '#', [img(src: 'images/whatsapp.svg', width: 24, height: 24)]),
            a(href: '#', [img(src: 'images/instagram.svg', width: 24, height: 24)]),
          ]),
        ]),
        div(classes: 'footer-nav', [
          div(classes: 'nav-col', [
            h4([text('Quick Links')]),
            a(href: '$basePath/', [text('Home')]),
            a(href: '$basePath/about', [text('About')]),
            a(href: '$basePath/service', [text('Service')]),
            a(href: '$basePath/contact', [text('Contact')]),
          ]),
          div(classes: 'nav-col', [
            h4([text('Newsletter')]),
            p([text('Subscribe to our newsletter for latest updates.')]),
            div(classes: 'newsletter-input', [
              input(type: InputType.email, attributes: {'placeholder': 'Email Address'}),
              button([
                img(src: 'images/send.svg', width: 20, height: 20), // Placeholder
              ]),
            ]),
          ]),
        ]),
      ]),
      div(classes: 'footer-bottom', [
        text('© 2023 3CREA. All rights reserved.'),
        div(classes: 'footer-links', [
          a(href: '#', [text('Privacy Policy')]),
          a(href: '#', [text('Terms of Service')]),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.footer-section', [
      css('&').styles(
        backgroundColor: AppColors.surface,
        padding: Padding.only(top: 80.px, bottom: 20.px, left: 20.px, right: 20.px),
        display: Display.flex,
        flexDirection: FlexDirection.column,
        alignItems: AlignItems.center,
        width: 100.percent,
      ),
      css('.footer-content').styles(
        display: Display.flex,
        justifyContent: JustifyContent.spaceBetween,
        width: 100.percent,
        maxWidth: 1200.px,
        flexWrap: FlexWrap.wrap,
        gap: Gap.all(40.px),
        margin: Margin.only(bottom: 60.px),
      ),
      css('.footer-brand').styles(
        width: 100.percent,
        maxWidth: 400.px,
        display: Display.flex,
        flexDirection: FlexDirection.column,
        gap: Gap.all(20.px),
      ),
      css('.footer-brand h3').styles(
        fontSize: 32.px,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
      ),
      css('.social-icons').styles(
        display: Display.flex,
        gap: Gap.all(16.px),
      ),
      css('.social-icons img').styles(
        opacity: 0.7,
        transition: const Transition('opacity', duration: Duration(milliseconds: 200)),
      ),
      css('.social-icons img:hover').styles(
        opacity: 1.0,
      ),

      css('.footer-nav').styles(
        display: Display.flex,
        gap: Gap.all(60.px),
        flexWrap: FlexWrap.wrap,
      ),
      css('.nav-col').styles(
        display: Display.flex,
        flexDirection: FlexDirection.column,
        gap: Gap.all(16.px),
      ),
      css('h4').styles(
        fontSize: 18.px,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
        margin: Margin.zero,
      ),
      css('a').styles(
        color: AppColors.textSecondary,
        textDecoration: TextDecoration.none,
        transition: const Transition('color', duration: Duration(milliseconds: 200)),
      ),
      css('a:hover').styles(color: AppColors.primary),

      css('.newsletter-input').styles(
        display: Display.flex,
        backgroundColor: AppColors.background,
        padding: Padding.all(4.px),
        radius: BorderRadius.circular(30.px),
        border: Border.all(color: AppColors.secondary, width: 1.px),
      ),
      css('input').styles(
        backgroundColor: Colors.transparent,
        border: Border.unset,
        padding: Padding.symmetric(horizontal: 16.px),
        color: AppColors.textPrimary,
        outline: Outline.unset,
        flex: Flex.grow(1),
      ),
      css('button').styles(
        width: 40.px,
        height: 40.px,
        radius: BorderRadius.circular(20.px),
        backgroundColor: AppColors.primary,
        border: Border.unset,
        display: Display.flex,
        justifyContent: JustifyContent.center,
        alignItems: AlignItems.center,
        cursor: Cursor.pointer,
      ),

      css('.footer-bottom').styles(
        width: 100.percent,
        maxWidth: 1200.px,
        padding: Padding.only(top: 20.px),
        raw: {'border-top': '1px solid ${AppColors.secondary.value}'},
        display: Display.flex,
        justifyContent: JustifyContent.spaceBetween,
        color: AppColors.textSecondary,
        fontSize: 14.px,
        flexWrap: FlexWrap.wrap,
        gap: Gap.all(20.px),
      ),
      css('.footer-links').styles(
        display: Display.flex,
        gap: Gap.all(24.px),
      ),

      // Responsive
      css('@media (max-width: 768px)', [
        css('.footer-content').styles(flexDirection: FlexDirection.column),
        css('.footer-nav').styles(flexDirection: FlexDirection.column, gap: Gap.all(30.px)),
        css('.footer-bottom').styles(justifyContent: JustifyContent.center, textAlign: TextAlign.center),
      ]),
    ]),
  ];
}
