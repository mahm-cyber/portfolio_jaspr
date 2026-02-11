import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../constants/theme.dart';

class PortfolioSection extends StatelessComponent {
  const PortfolioSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(classes: 'portfolio-section', [
      div(classes: 'portfolio-header', [
        h2([text('Lets have a look at my Portfolio')]),
        div(classes: 'filter-tabs', [
          button(classes: 'filter-tab active', [text('Landing Page')]),
          button(classes: 'filter-tab', [text('Product Design')]),
          button(classes: 'filter-tab', [text('Animation')]),
          button(classes: 'filter-tab', [text('Glassmorphism')]),
          button(classes: 'filter-tab', [text('Cards')]),
        ]),
      ]),
      
      div(classes: 'portfolio-showcase', [
        // Portfolio Card (Slider style as per blueprint)
        div(classes: 'portfolio-slide', [
           div(classes: 'slide-image', [
             // Placeholder image
             div(classes: 'img-placeholder', [text('Preview Image')]),
           ]),
           div(classes: 'slide-content', [
             h3([text('Lirante - Food Delivery Solution')]),
             p([text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis lacus nunc, posuere in justo vulputate.')]),
             div(classes: 'slide-action', [
                // Circular arrow button
                button(classes: 'arrow-btn', [
                  img(src: 'images/arrow.svg', alt: 'View Project'),
                ]),
             ]),
           ]),
        ]),
        // Slider Indicators
        div(classes: 'slider-indicators', [
          span(classes: 'dot active', []),
          span(classes: 'dot', []),
          span(classes: 'dot', []),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.portfolio-section', [
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
        margin: Margin.only(bottom: 40.px),
      ),
      css('.filter-tabs').styles(
        display: Display.flex,
        gap: Gap.all(16.px),
        flexWrap: FlexWrap.wrap,
        justifyContent: JustifyContent.center,
        margin: Margin.only(bottom: 60.px),
      ),
      css('.filter-tab').styles(
        padding: Padding.symmetric(horizontal: 24.px, vertical: 12.px),
        radius: BorderRadius.circular(30.px),
        backgroundColor: Colors.transparent,
        border: Border.all(color: AppColors.textSecondary, width: 1.px),
        color: AppColors.textSecondary,
        cursor: Cursor.pointer,
        fontSize: 16.px,
        transition: const Transition('all', duration: Duration(milliseconds: 200)),
      ),
      css('.filter-tab.active, .filter-tab:hover').styles(
        backgroundColor: AppColors.primary,
        color: AppColors.textDark, // Text on orange
        border: Border.all(color: AppColors.primary, width: 1.px),
      ),
      
      // Showcase
      css('.portfolio-showcase').styles(
        width: 100.percent,
        maxWidth: 1000.px,
        display: Display.flex,
        flexDirection: FlexDirection.column,
        alignItems: AlignItems.center,
      ),
      css('.portfolio-slide').styles(
        display: Display.flex,
        backgroundColor: AppColors.surface,
        radius: BorderRadius.circular(40.px),
        overflow: Overflow.hidden,
        width: 100.percent,
        minHeight: 400.px,
      ),
      css('.slide-image').styles(
        width: 60.percent,
        backgroundColor: Colors.black, // Placeholder
        display: Display.flex,
        justifyContent: JustifyContent.center,
        alignItems: AlignItems.center,
      ),
      css('.img-placeholder').styles(color: Colors.white),
      css('.slide-content').styles(
        width: 40.percent,
        padding: Padding.all(40.px),
        display: Display.flex,
        flexDirection: FlexDirection.column,
        justifyContent: JustifyContent.center,
        gap: Gap.all(20.px),
      ),
      css('h3').styles(
        fontSize: 32.px,
        color: AppColors.textPrimary,
        fontWeight: FontWeight.bold,
      ),
      css('p').styles(
        fontSize: 16.px,
        color: AppColors.textSecondary,
        lineHeight: 1.6.em,
      ),
      css('.arrow-btn').styles(
        width: 60.px,
        height: 60.px,
        radius: BorderRadius.circular(30.px),
        backgroundColor: AppColors.primary,
        border: Border.unset,
        display: Display.flex,
        justifyContent: JustifyContent.center,
        alignItems: AlignItems.center,
        cursor: Cursor.pointer,
      ),
      css('.arrow-btn img').styles(
        width: 24.px,
        raw: {'filter': 'brightness(0) invert(1)'},
      ),
      
      // Indicators
      css('.slider-indicators').styles(
        display: Display.flex,
        gap: Gap.all(12.px),
        margin: Margin.only(top: 40.px),
      ),
      css('.dot').styles(
        width: 12.px,
        height: 12.px,
        radius: BorderRadius.circular(6.px),
        backgroundColor: AppColors.secondary,
        cursor: Cursor.pointer,
      ),
      css('.dot.active').styles(
        backgroundColor: AppColors.primary,
        width: 40.px, // Pill shape for active
      ),

      // Responsive
      css('@media (max-width: 900px)', [
        css('.portfolio-slide').styles(
          flexDirection: FlexDirection.column,
        ),
        css('.slide-image, .slide-content').styles(width: 100.percent),
        css('.slide-image').styles(height: 300.px),
      ]),
    ]),
  ];
}
