import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../constants/theme.dart';

class ServiceCard extends StatelessComponent {
  final String title;
  final String imageUrl;

  const ServiceCard({
    required this.title,
    required this.imageUrl,
    super.key,
  });

  @override
  Component build(BuildContext context) {
    return div(classes: 'service-card', [
      // Inner container for the glossy effect
      div(classes: 'service-inner', [
        div(classes: 'service-image', [
          img(src: imageUrl, alt: title),
        ]),
        div(classes: 'service-footer', [
          h3([text(title)]),
          div(classes: 'service-arrow', [
            img(src: 'images/arrow.svg', alt: 'Go'),
          ]),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.service-card', [
      css('&').styles(
        position: Position.relative(),
        radius: BorderRadius.circular(40.px),
        overflow: Overflow.hidden,
        cursor: Cursor.pointer,
        transition: const Transition('transform', duration: Duration(milliseconds: 300)),
        backgroundColor: AppColors.surface,
      ),
      css('&:hover').styles(
        transform: Transform.scale(1.02),
      ),
      css('.service-inner').styles(
        display: Display.flex,
        flexDirection: FlexDirection.column,
        padding: Padding.all(20.px),
        height: 100.percent,
        raw: {'gap': '20px'},
      ),
      css('.service-image').styles(
        width: 100.percent,
        height: 300.px, // Adjust based on design
        radius: BorderRadius.circular(30.px),
        overflow: Overflow.hidden,
        backgroundColor: Colors.black, // Placeholder background
      ),
      css('.service-image img').styles(
        width: 100.percent,
        height: 100.percent,
        raw: {'object-fit': 'cover'},
      ),
      css('.service-footer').styles(
        display: Display.flex,
        justifyContent: JustifyContent.spaceBetween,
        alignItems: AlignItems.center,
        padding: Padding.symmetric(horizontal: 10.px, vertical: 10.px),
      ),
      css('h3').styles(
        color: AppColors.textPrimary,
        fontSize: 24.px,
        fontWeight: FontWeight.w500,
        margin: Margin.zero,
      ),
      css('.service-arrow').styles(
        width: 50.px,
        height: 50.px,
        radius: BorderRadius.circular(25.px),
        backgroundColor: AppColors.primary, // Using orange accent
        display: Display.flex,
        justifyContent: JustifyContent.center,
        alignItems: AlignItems.center,
        transform: Transform.rotate(45.deg), // Arrow usually points up-right
      ),
      css('.service-arrow img').styles(
        width: 24.px,
        height: 24.px,
        raw: {'filter': 'brightness(0) invert(1)'}, // Make arrow white
      ),
    ]),
  ];
}
