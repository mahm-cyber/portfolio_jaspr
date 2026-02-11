// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/server.dart';
import 'package:jaspr_portfolio/components/buttons.dart' as _buttons;
import 'package:jaspr_portfolio/components/cards.dart' as _cards;
import 'package:jaspr_portfolio/components/header.dart' as _header;
import 'package:jaspr_portfolio/components/service_card.dart' as _service_card;
import 'package:jaspr_portfolio/pages/about.dart' as _about;
import 'package:jaspr_portfolio/pages/contact.dart' as _contact;
import 'package:jaspr_portfolio/pages/home.dart' as _home;
import 'package:jaspr_portfolio/pages/projects.dart' as _projects;
import 'package:jaspr_portfolio/sections/blog_section.dart' as _blog_section;
import 'package:jaspr_portfolio/sections/contact_section.dart'
    as _contact_section;
import 'package:jaspr_portfolio/sections/experience_section.dart'
    as _experience_section;
import 'package:jaspr_portfolio/sections/footer_section.dart'
    as _footer_section;
import 'package:jaspr_portfolio/sections/portfolio_section.dart'
    as _portfolio_section;
import 'package:jaspr_portfolio/sections/testimonial_section.dart'
    as _testimonial_section;
import 'package:jaspr_portfolio/sections/why_hire_me_section.dart'
    as _why_hire_me_section;
import 'package:jaspr_portfolio/app.dart' as _app;

/// Default [ServerOptions] for use with your Jaspr project.
///
/// Use this to initialize Jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'main.server.options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultServerOptions,
///   );
///
///   runApp(...);
/// }
/// ```
ServerOptions get defaultServerOptions => ServerOptions(
  clientId: 'main.client.dart.js',
  clients: {
    _about.About: ClientTarget<_about.About>('about'),
    _contact.Contact: ClientTarget<_contact.Contact>('contact'),
  },
  styles: () => [
    ..._buttons.CapsuleButton.styles,
    ..._buttons.PrimaryButton.styles,
    ..._cards.ProjectCard.styles,
    ..._cards.StatsCard.styles,
    ..._header.Header.styles,
    ..._service_card.ServiceCard.styles,
    ..._about.About.styles,
    ..._contact.Contact.styles,
    ..._home.Home.styles,
    ..._projects.Projects.styles,
    ..._blog_section.BlogSection.styles,
    ..._contact_section.ContactSection.styles,
    ..._experience_section.ExperienceSection.styles,
    ..._footer_section.FooterSection.styles,
    ..._portfolio_section.PortfolioSection.styles,
    ..._testimonial_section.TestimonialSection.styles,
    ..._why_hire_me_section.WhyHireMeSection.styles,
    ..._app.App.styles,
  ],
);
