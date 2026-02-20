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
      // Main card frame with glassmorphism
      div(classes: 'service-card-glass', [
        // Inner content area
        div(classes: 'service-card-content', [
          // Title row
          div(classes: 'service-card-title', [
            h3([text(title)]),
          ]),
          // Separator line
          div(classes: 'service-card-separator', []),
          // Image area
          div(classes: 'service-card-image', [
            img(src: imageUrl, alt: title),
          ]),
        ]),
        // Arrow button (bottom-right, absolute)
        div(classes: 'service-card-arrow', [
          img(src: 'images/arrow.svg', alt: 'Go', classes: 'arrow-icon'),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.service-card', [
      css('&').styles(
        position: Position.relative(),
        cursor: Cursor.pointer,
        transition: const Transition('transform', duration: Duration(milliseconds: 300)),
        raw: {
          'flex': '1 1 0',
          'min-width': '300px',
        },
      ),
      css('&:hover').styles(
        transform: Transform.scale(1.02),
      ),

      // Glassmorphism card
      css('.service-card-glass').styles(
        position: Position.relative(),
        display: Display.flex,
        flexDirection: FlexDirection.column,
        radius: BorderRadius.circular(37.px),
        overflow: Overflow.hidden,
        raw: {
          'background': 'rgba(104, 104, 104, 0.2)',
          'backdrop-filter': 'blur(15px)',
          '-webkit-backdrop-filter': 'blur(15px)',
          'border': '2px solid rgba(255, 255, 255, 0.1)',
        },
      ),

      // Content area
      css('.service-card-content').styles(
        display: Display.flex,
        flexDirection: FlexDirection.column,
        width: 100.percent,
      ),

      // Title
      css('.service-card-title').styles(
        padding: Padding.symmetric(horizontal: 37.px, vertical: 20.px),
      ),
      css('.service-card-title h3').styles(
        color: AppColors.textPrimary,
        fontSize: 32.px,
        fontWeight: FontWeight.w500,
        margin: Margin.zero,
        raw: {
          'font-family': 'Lufga, Plus Jakarta Sans, sans-serif',
          'letter-spacing': '-1.5%',
        },
      ),

      // Separator
      css('.service-card-separator').styles(
        width: 100.percent,
        height: 2.px,
        raw: {
          'background': 'rgba(249, 250, 251, 0.3)',
        },
      ),

      // Image
      css('.service-card-image').styles(
        width: 100.percent,
        raw: {
          'aspect-ratio': '416 / 307',
        },
        overflow: Overflow.hidden,
      ),
      css('.service-card-image img').styles(
        width: 100.percent,
        height: 100.percent,
        raw: {'object-fit': 'cover'},
      ),

      // Arrow button
      css('.service-card-arrow').styles(
        position: Position.absolute(bottom: 0.px, right: 0.px),
        width: 114.px,
        height: 114.px,
        display: Display.flex,
        justifyContent: JustifyContent.center,
        alignItems: AlignItems.center,
        radius: BorderRadius.circular(57.px),
        raw: {
          'background': '#1D2939',
        },
      ),
      css('.arrow-icon').styles(
        width: 30.px,
        height: 30.px,
        raw: {
          'filter': 'brightness(0) invert(1)',
          'transform': 'rotate(-45deg)',
        },
      ),
    ]),
  ];
}
