import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../constants/theme.dart';

class BlogSection extends StatelessComponent {
  const BlogSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(classes: 'blog-section', [
      h2([text('From my blog post')]),
      
      div(classes: 'blog-grid', [
        for(var i=0; i<3; i++)
          div(classes: 'blog-card', [
            div(classes: 'blog-image', [
               img(src: 'images/service_ui_ux.png', alt: 'Blog Post'), // Placeholder
            ]),
            div(classes: 'blog-content', [
              div(classes: 'blog-meta', [
                span(classes: 'category', [text('UI/UX Design')]),
                span(classes: 'date', [text('• Oct 12, 2023')]),
              ]),
              h3([text('How to Design a Perfect Landing Page')]),
              div(classes: 'blog-author', [
                text('By Jayesh Patil'),
              ]),
              div(classes: 'blog-action', [
                 text('Read More'),
                 img(src: 'images/arrow.svg', width: 16, height: 16),
              ]),
            ]),
          ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.blog-section', [
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
        margin: Margin.only(bottom: 60.px),
      ),
      css('.blog-grid').styles(
        display: Display.grid,
        raw: {'grid-template-columns': 'repeat(auto-fit, minmax(300px, 1fr))', 'gap': '30px'},
        width: 100.percent,
        maxWidth: 1200.px,
      ),
      css('.blog-card').styles(
        backgroundColor: AppColors.surface,
        radius: BorderRadius.circular(30.px),
        overflow: Overflow.hidden,
        transition: const Transition('transform', duration: Duration(milliseconds: 300)),
      ),
      css('.blog-card:hover').styles(
        transform: Transform.translate(y: (-10).px),
      ),
      css('.blog-image').styles(
        height: 200.px,
        width: 100.percent,
        backgroundColor: Colors.black, // Placeholder
      ),
      css('.blog-image img').styles(
        width: 100.percent,
        height: 100.percent,
        raw: {'object-fit': 'cover'},
      ),
      css('.blog-content').styles(
        padding: Padding.all(24.px),
        display: Display.flex,
        flexDirection: FlexDirection.column,
        gap: Gap.all(16.px),
      ),
      css('.blog-meta').styles(
        display: Display.flex,
        gap: Gap.all(8.px),
        fontSize: 14.px,
        color: AppColors.textSecondary,
      ),
      css('.category').styles(
        color: AppColors.primary,
        fontWeight: FontWeight.bold,
      ),
      css('h3').styles(
        fontSize: 20.px,
        color: AppColors.textPrimary,
        fontWeight: FontWeight.bold,
        lineHeight: 1.4.em,
      ),
      css('.blog-author').styles(
        fontSize: 14.px,
        color: AppColors.textSecondary,
      ),
      css('.blog-action').styles(
        display: Display.flex,
        alignItems: AlignItems.center,
        gap: Gap.all(8.px),
        color: AppColors.primary,
        fontWeight: FontWeight.bold,
        cursor: Cursor.pointer,
        margin: Margin.only(top: 8.px),
      ),
      css('.blog-action img').styles(
        raw: {'filter': 'brightness(0) sepia(1) saturate(5) hue-rotate(-20deg)'}, // Orange tint hack if svg is black
        // Better: filter: brightness(0) saturate(100%) invert(66%) sepia(35%) saturate(5906%) hue-rotate(359deg) brightness(101%) contrast(106%); for #FF6A00
      ),
    ]),
  ];
}
