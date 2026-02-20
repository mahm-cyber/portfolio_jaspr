import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

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
      // Hero Section — Centered layout matching Figma
      section(
        classes: 'relative flex flex-col items-center text-center pt-8 pb-0 overflow-hidden',
        [
          // Decorative accent lines above greeting
          img(
            src: 'images/rays.svg',
            classes: 'w-6 h-6 mb-1',
            alt: '',
          ),

          // Hello badge
          div(
            classes: 'inline-flex px-6 py-2 rounded-full border border-[#404040] text-white font-semibold text-sm mb-3',
            [text('Hello!')],
          ),

          // Main heading
          h1(
            classes: 'text-5xl md:text-7xl font-bold text-white leading-tight tracking-tight mb-2',
            [
              text("I'm "),
              span(classes: 'text-[#FD853A]', [text('Mahmoud')]),
              text(','),
              br(),
              text('Software Engineer'),
            ],
          ),

          // Hero visual container — arch + image + floating cards
          div(
            classes: 'relative w-full max-w-3xl mt-4 flex flex-col items-center',
            [
              // Orange arch background — shorter so profile extends above it
              div(
                classes:
                    'absolute bottom-0 left-1/2 -translate-x-1/2 w-[440px] h-[400px] bg-[#FD853A] rounded-t-[220px]',
                [],
              ),

              // Profile image — head extends above arch
              img(
                src: 'images/mahmoud_profile.png',
                classes: 'relative z-10 w-[320px] h-auto object-contain',
                alt: 'Mahmoud Atef',
              ),

              // Decorative accent lines (top-right of arch)
              img(
                src: 'images/accent_lines.svg',
                classes: 'absolute top-4 right-[15%] w-10 h-10 z-20',
                alt: '',
              ),

              // Floating Testimonial Card (left side)
              div(
                classes:
                    'absolute left-0 top-[40%] z-20 bg-[#262626] border border-[#404040] rounded-2xl p-4 max-w-[200px] shadow-xl',
                [
                  img(
                    src: 'images/quote.svg',
                    classes: 'w-6 h-6 mb-2',
                    alt: 'Quote',
                  ),
                  p(
                    classes: 'text-[#9CA3AF] text-xs leading-relaxed',
                    [
                      text(
                        "Mahmoud's exceptional software engineering ensures our project's success. Highly Recommended",
                      ),
                    ],
                  ),
                ],
              ),

              // Floating Stats Card (right side)
              div(
                classes:
                    'absolute right-0 top-[30%] z-20 bg-[#262626] border border-[#404040] rounded-2xl p-4 shadow-xl',
                [
                  div(classes: 'flex gap-1 mb-1', [
                    for (var i = 0; i < 5; i++)
                      img(
                        src: 'images/star_orange.svg',
                        classes: 'w-4 h-4',
                      ),
                  ]),
                  span(
                    classes: 'text-[#FD853A] font-bold text-lg',
                    [text('10 Years')],
                  ),
                  br(),
                  span(
                    classes: 'text-[#9CA3AF] text-sm',
                    [text('Experience')],
                  ),
                ],
              ),

              // Decorative accent lines (bottom-left)
              img(
                src: 'images/accent_lines.svg',
                classes: 'absolute bottom-20 left-[15%] w-10 h-10 z-20 rotate-180',
                alt: '',
              ),

              // CTA group — dark pill overlapping the bottom of the arch
              div(
                classes:
                    'relative z-30 -mt-12 flex items-center gap-3 bg-[#1F1F1F] rounded-full px-3 py-2 border border-[#333333] shadow-lg',
                [
                  a(
                    href: '$basePath/projects',
                    classes:
                        'inline-flex items-center gap-2 bg-[#FD853A] text-[#171717] font-bold px-8 py-3 rounded-full no-underline hover:scale-105 transition-transform',
                    [text('Portfolio')],
                  ),
                  a(
                    href: '$basePath/contact',
                    classes:
                        'inline-flex items-center text-white font-medium px-8 py-3 rounded-full no-underline hover:scale-105 transition-transform',
                    [text('Hire me')],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),

      // Services Section — Matching Figma design
      section(classes: 'services-section', [
        // Decoration overlay (3D shapes)
        img(
          src: 'images/services_decoration.svg',
          classes: 'services-decoration',
          alt: '',
        ),

        // Header row: title left, description right
        div(classes: 'services-header', [
          h2(classes: 'services-title', [
            text('My '),
            span(classes: 'text-accent', [text('Services')]),
          ]),
          p(classes: 'services-desc', [
            text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis lacus nunc, posuere in justo vulputate, bibendum sodales',
            ),
          ]),
        ]),

        // Cards row
        div(classes: 'services-cards', [
          div(classes: 'services-cards-row', [
            ServiceCard(title: 'UI/ UX Design', imageUrl: 'images/service_ui_ux_img.png'),
            ServiceCard(title: 'Web Design', imageUrl: 'images/service_web_design_img.png'),
            ServiceCard(title: 'Landing Page', imageUrl: 'images/service_landing_page_img.png'),
          ]),
          // Pagination dots
          div(classes: 'services-dots', [
            div(classes: 'dot active', []),
            div(classes: 'dot', []),
            div(classes: 'dot', []),
            div(classes: 'dot', []),
          ]),
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
      // Hero styles are now handled by Tailwind classes

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
      css('.services-section').styles(
        position: Position.relative(),
        display: Display.flex,
        flexDirection: FlexDirection.column,
        alignItems: AlignItems.center,
        width: 100.percent,
        radius: BorderRadius.circular(50.px),
        overflow: Overflow.hidden,
        raw: {
          'gap': '96px',
          'padding': '116px 71px',
          'background-image': 'url(images/services_bg.png)',
          'background-size': 'cover',
          'background-position': 'center',
          'background-repeat': 'no-repeat',
          'background-color': '#171717',
        },
      ),
      // Decoration overlay
      css('.services-decoration').styles(
        position: Position.absolute(top: 50.px, left: 0.px),
        width: 100.percent,
        raw: {
          'height': 'auto',
          'pointer-events': 'none',
          'z-index': '1',
        },
      ),
      // Header
      css('.services-header').styles(
        display: Display.flex,
        justifyContent: JustifyContent.spaceBetween,
        alignItems: AlignItems.end,
        width: 100.percent,
        flexWrap: FlexWrap.wrap,
        raw: {
          'gap': '40px',
          'z-index': '2',
          'position': 'relative',
        },
      ),
      css('.services-title').styles(
        fontSize: 48.px,
        color: AppColors.textPrimary,
        margin: Margin.zero,
        raw: {
          'font-family': 'Vast Shadow, Plus Jakarta Sans, serif',
          'font-weight': '400',
          'line-height': '1em',
          'letter-spacing': '-1.5%',
          'white-space': 'nowrap',
        },
      ),
      css('.text-accent').styles(
        color: AppColors.primary,
      ),
      css('.services-desc').styles(
        maxWidth: 576.px,
        color: AppColors.textPrimary,
        fontSize: 20.px,
        margin: Margin.zero,
        raw: {
          'font-family': 'Lufga, Plus Jakarta Sans, sans-serif',
          'font-weight': '500',
          'line-height': '1.3em',
          'letter-spacing': '-1.5%',
        },
      ),
      // Cards container
      css('.services-cards').styles(
        display: Display.flex,
        flexDirection: FlexDirection.column,
        alignItems: AlignItems.center,
        width: 100.percent,
        raw: {
          'gap': '39px',
          'z-index': '2',
          'position': 'relative',
        },
      ),
      css('.services-cards-row').styles(
        display: Display.flex,
        justifyContent: JustifyContent.spaceBetween,
        width: 100.percent,
        raw: {
          'gap': '45px',
        },
      ),
      // Pagination dots
      css('.services-dots').styles(
        display: Display.flex,
        alignItems: AlignItems.center,
        raw: {
          'gap': '12px',
        },
      ),
      css('.services-dots .dot').styles(
        width: 15.px,
        height: 15.px,
        radius: BorderRadius.circular(8.px),
        raw: {
          'background': '#E4E7EC',
        },
      ),
      css('.services-dots .dot.active').styles(
        width: 60.px,
        height: 15.px,
        radius: BorderRadius.circular(8.px),
        raw: {
          'background': '#FD853A',
        },
      ),
    ]),
  ];
}
