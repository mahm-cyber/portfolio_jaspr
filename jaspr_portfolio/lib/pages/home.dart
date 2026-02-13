import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../components/buttons.dart';
import '../components/service_card.dart';
import '../constants/theme.dart';
import '../constants/config.dart';
import '../sections/experience_section.dart';
import '../sections/why_hire_me_section.dart';
import '../sections/portfolio_section.dart';
import '../sections/testimonial_section.dart';
import '../sections/contact_section.dart';
import '../sections/blog_section.dart';
import '../sections/footer_section.dart';

class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'home-page', [
      // Hero Section
      section(classes: 'hero', [
        div(classes: 'hero-content', [
          div(classes: 'greeting-badge', [
            text('Hello!'),
          ]),
          h1([
            text("I'm Jenny,"),
            br(),
            text("Product Designer"),
          ]),
          p(classes: 'hero-description', [
            text("Jenny’s Exceptional product design ensure our website’s success. Highly Recommended"),
          ]),
          div(classes: 'cta-group', [
            PrimaryButton(label: 'Portfolio', href: '$basePath/projects'),
            PrimaryButton(label: 'Hire me', href: '$basePath/contact', isOutlined: true),
          ]),
        ]),

        div(classes: 'hero-visual', [
          // Profile Image with Decorations
          div(classes: 'profile-container', [
            img(src: 'images/profile.png', classes: 'profile-image', alt: 'Jenny Profile'),
            img(src: 'images/arrow.svg', classes: 'decoration-arrow', alt: ''),
            img(src: 'images/decoration.svg', classes: 'decoration-shape', alt: ''),
          ]),

          // Floating Stats Card
          div(classes: 'floating-card stats-card', [
            div(classes: 'stats-content', [
              span(classes: 'stats-number', [text('10 Years')]),
              span(classes: 'stats-label', [text('Experience')]),
            ]),
          ]),

          // Floating Testimonial Card (Simulated based on design)
          div(classes: 'floating-card testimonial-card', [
            img(src: 'images/quote.svg', classes: 'quote-icon', alt: 'Quote'),
            div([
              div(classes: 'stars', [
                // 5 stars simulation
                for (var i = 0; i < 5; i++) img(src: 'images/star.svg', width: 12, height: 12),
              ]),
              p([text("Jenny’s Exceptional product design...")]),
            ]),
          ]),
        ]),
      ]),

      // Services Section
      section(classes: 'services', [
        div(classes: 'services-header', [
          h2([text('My Services')]),
          p([
            text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis lacus nunc, posuere in justo vulputate, bibendum sodales',
            ),
          ]),
        ]),
        div(classes: 'services-grid', [
          ServiceCard(title: 'UI/ UX Design', imageUrl: 'images/service_ui_ux.png'),
          ServiceCard(title: 'Web Design', imageUrl: 'images/service_web_design.png'),
          ServiceCard(title: 'Landing Page', imageUrl: 'images/service_landing_page.png'),
        ]),
      ]),

      // Work Experience Timeline
      ExperienceSection(),

      // Why Hire Me Section
      WhyHireMeSection(),

      // Portfolio Section
      PortfolioSection(),

      // Testimonial Section
      TestimonialSection(),

      // Contact CTA Section
      ContactSection(),

      // Blog Section
      BlogSection(),

      // Footer
      FooterSection(),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.home-page', [
      css('&').styles(
        display: Display.flex,
        width: 100.percent,
        maxWidth: 1440.px, // Max width from Figma usually
        padding: Padding.only(
          top: 120.px,
          bottom: 0.px,
          left: 20.px,
          right: 20.px,
        ), // Removed bottom padding as footer handles it
        margin: Margin.symmetric(horizontal: Unit.auto),
        flexDirection: FlexDirection.column,
        raw: {'overflow-x': 'hidden'},
      ),
      css('.hero', [
        css('&').styles(
          display: Display.grid,
          raw: {'grid-template-columns': '1fr 1fr'}, // 2 Columns
          gap: Gap.all(40.px),
          alignItems: AlignItems.center,
          minHeight: 80.vh,
        ),
        css('@media (max-width: 900px)', [
          css('&').styles(
            display: Display.flex,
            flexDirection: FlexDirection.columnReverse,
            textAlign: TextAlign.center,
            padding: Padding.only(top: 40.px),
          ),
        ]),
      ]),
      css('.hero-content', [
        css('&').styles(
          display: Display.flex,
          flexDirection: FlexDirection.column,
          justifyContent: JustifyContent.center,
          gap: Gap.all(24.px),
          alignItems: AlignItems.start,
        ),
        css('@media (max-width: 900px)', [
          css('&').styles(alignItems: AlignItems.center),
        ]),
      ]),
      css('.greeting-badge').styles(
        padding: Padding.symmetric(horizontal: 24.px, vertical: 12.px),
        radius: BorderRadius.circular(30.px),
        border: Border.all(color: AppColors.secondary, width: 1.px),
        color: AppColors.textPrimary,
        fontWeight: FontWeight.w600,
        backgroundColor: Colors.transparent,
      ),
      css('h1').styles(
        color: AppColors.textPrimary,
        fontSize: 64.px,
        fontWeight: FontWeight.bold,
        lineHeight: 1.1.em,
        raw: {'letter-spacing': '-0.02em'},
      ),
      css('.hero-description').styles(
        color: AppColors.textSecondary,
        fontSize: 18.px,
        maxWidth: 400.px,
        lineHeight: 1.6.em,
      ),
      css('.cta-group').styles(
        display: Display.flex,
        gap: Gap.all(16.px),
        margin: Margin.only(top: 20.px),
      ),

      // Visual Section
      css('.hero-visual').styles(
        position: Position.relative(),
        width: 100.percent,
        height: 600.px,
        display: Display.flex,
        justifyContent: JustifyContent.center,
        alignItems: AlignItems.center,
      ),
      css('.profile-container').styles(
        position: Position.relative(),
        width: 450.px,
        height: 550.px,
      ),
      css('.profile-image').styles(
        width: 100.percent,
        height: 100.percent,
        radius: BorderRadius.circular(200.px), // Pill shape / Oval
        border: Border.all(color: AppColors.surface, width: 8.px),
        raw: {'object-fit': 'cover'},
      ),
      css('.decoration-arrow').styles(
        position: Position.absolute(top: 0.px, right: (-40).px),
        width: 60.px,
      ),
      css('.decoration-shape').styles(
        position: Position.absolute(bottom: 40.px, left: (-40).px),
        width: 80.px,
      ),

      // Floating Cards
      css('.floating-card').styles(
        position: Position.absolute(),
        backgroundColor: AppColors.surface, // Fallback
        padding: Padding.all(16.px),
        radius: BorderRadius.circular(20.px),
        border: Border.all(color: AppColors.secondary, width: 1.px),
        shadow: BoxShadow(color: Colors.black, blur: 20.px, spread: 0.px, offsetX: 0.px, offsetY: 10.px),
        raw: {'backdrop-filter': 'blur(10px)'},
      ),
      css('.stats-card').styles(
        raw: {'top': '100px', 'left': '0px'},
        zIndex: ZIndex(10),
      ),
      css('.stats-content').styles(
        display: Display.flex,
        flexDirection: FlexDirection.column,
        alignItems: AlignItems.center,
      ),
      css('.stats-number').styles(
        fontSize: 24.px,
        fontWeight: FontWeight.bold,
        color: AppColors.primary,
      ),
      css('.stats-label').styles(
        fontSize: 14.px,
        color: AppColors.textSecondary,
      ),
      css('.testimonial-card').styles(
        raw: {'bottom': '80px', 'right': '0px'},
        maxWidth: 200.px,
        zIndex: ZIndex(10),
      ),
      css('.quote-icon').styles(
        width: 24.px,
        height: 24.px,
        margin: Margin.only(bottom: 8.px),
      ),

      // Footer
      css('.home-footer').styles(
        display: Display.flex,
        justifyContent: JustifyContent.center,
        gap: Gap.all(24.px),
        margin: Margin.only(top: 60.px),
        padding: Padding.symmetric(vertical: 20.px),
        raw: {'border-top': '1px solid ${AppColors.secondary.value}'},
        width: 100.percent,
      ),
      css('.home-footer img').styles(
        width: 24.px,
        height: 24.px,
        opacity: 0.7,
        transition: Transition('opacity', duration: 200.ms),
      ),
      css('.home-footer img:hover').styles(
        opacity: 1.0,
      ),

      // Services Section Styles
      css('.services').styles(
        display: Display.flex,
        flexDirection: FlexDirection.column,
        padding: Padding.symmetric(vertical: 60.px),
        width: 100.percent,
        raw: {'gap': '40px'},
      ),
      css('.services-header').styles(
        display: Display.flex,
        justifyContent: JustifyContent.spaceBetween,
        alignItems: AlignItems.end,
        flexWrap: FlexWrap.wrap,
        raw: {'gap': '20px'},
      ),
      css('.services-header h2').styles(
        fontSize: 48.px,
        color: AppColors.textPrimary,
        margin: Margin.zero,
      ),
      css('.services-header p').styles(
        maxWidth: 500.px,
        color: AppColors.textSecondary,
        fontSize: 18.px,
        lineHeight: 1.5.em,
        margin: Margin.zero,
      ),
      css('.services-grid').styles(
        display: Display.grid,
        raw: {'grid-template-columns': 'repeat(auto-fit, minmax(300px, 1fr))', 'gap': '24px'},
      ),
    ]),
  ];
}
