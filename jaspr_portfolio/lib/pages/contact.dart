import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_riverpod/jaspr_riverpod.dart';
import '../components/buttons.dart';
import '../constants/theme.dart';
import '../domain/models/contact_form.dart';
import '../providers/contact_provider.dart';

@client
class Contact extends StatefulComponent {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();

  @css
  static List<StyleRule> get styles => [
    css('.contact-page', [
      css('&').styles(
        display: Display.flex,
        width: 100.percent,
        maxWidth: 600.px,
        padding: Padding.only(top: 100.px, bottom: 60.px),
        margin: Margin.symmetric(horizontal: Unit.auto),
        flexDirection: FlexDirection.column,
        alignItems: AlignItems.center,
        textAlign: TextAlign.center,
      ),
      css('h1').styles(
        margin: Margin.only(bottom: 16.px),
        color: AppColors.primary,
        fontSize: 48.px,
      ),
      css('p').styles(
        margin: Margin.only(bottom: 40.px),
        color: AppColors.textSecondary,
        fontSize: 18.px,
      ),
      css('.contact-form').styles(
        display: Display.flex,
        width: 100.percent,
        flexDirection: FlexDirection.column,
        textAlign: TextAlign.left,
        raw: {'gap': '24px'},
      ),
      css('.form-group').styles(
        display: Display.flex,
        flexDirection: FlexDirection.column,
        raw: {'gap': '8px'},
      ),
      css('label').styles(
        color: AppColors.primary,
        fontSize: 14.px,
        fontWeight: FontWeight.bold,
      ),
      css('input, textarea').styles(
        width: 100.percent,
        padding: Padding.all(16.px),
        border: Border.all(color: AppColors.surface, width: 2.px),
        radius: BorderRadius.circular(12.px),
        fontSize: 16.px,
        backgroundColor: AppColors.surface,
        raw: {'font-family': AppTextStyles.fontFamily, 'outline': 'none'},
      ),
      css('input:focus, textarea:focus').styles(
        border: Border.all(color: AppColors.primary, width: 2.px),
        backgroundColor: AppColors.background,
      ),
      css('.error-message').styles(
        padding: Padding.all(10.px),
        radius: BorderRadius.circular(8.px),
        color: AppColors.error,
        backgroundColor: AppColors.errorAccent.withOpacity(0.1),
      ),
      css('.success-message').styles(
        textAlign: TextAlign.center,
      ),
    ]),
  ];
}

class _ContactState extends State<Contact> {
  String name = '';
  String email = '';
  String message = '';

  @override
  Component build(BuildContext context) {
    return div(classes: 'contact-page', [
      h1([Component.text('Get in Touch')]),
      p([Component.text('Have a project in mind? Let\'s talk!')]),

      Builder(
        builder:
            (
              context,
            ) {
              // Safe check for server-side rendering to avoid "Scheduling a frame" errors
              // when accessing providers that might trigger state updates during build.
              try {
                final contactState = context.watch(contactProvider);
                final notifier = context.read(contactProvider.notifier);

                if (contactState.isSuccess) {
                  return div(classes: 'success-message', [
                    h2([Component.text('Message Sent!')]),
                    p([Component.text('Thank you for reaching out. I will get back to you soon.')]),
                    PrimaryButton(
                      label: 'Send Another',
                      onClick: () {
                        // Reset state logic could be added here
                      },
                    ),
                  ]);
                }

                return form(classes: 'contact-form', [
                  if (contactState.error != null) div(classes: 'error-message', [Component.text(contactState.error!)]),

                  div(classes: 'form-group', [
                    label(htmlFor: 'name', [Component.text('Name')]),
                    input(
                      id: 'name',
                      type: InputType.text,
                      name: 'name',
                      attributes: {'placeholder': 'Your Name'},
                      events: {'input': (e) => name = (e.target as dynamic).value},
                    ),
                  ]),
                  div(classes: 'form-group', [
                    label(htmlFor: 'email', [Component.text('Email')]),
                    input(
                      id: 'email',
                      type: InputType.email,
                      name: 'email',
                      attributes: {'placeholder': 'your@email.com'},
                      events: {'input': (e) => email = (e.target as dynamic).value},
                    ),
                  ]),
                  div(classes: 'form-group', [
                    label(htmlFor: 'message', [Component.text('Message')]),
                    textarea(
                      id: 'message',
                      name: 'message',
                      attributes: {'placeholder': 'Your Message', 'rows': '5'},
                      events: {'input': (e) => message = (e.target as dynamic).value},
                      [],
                    ),
                  ]),

                  if (contactState.isLoading)
                    div(classes: 'loading', [Component.text('Sending...')])
                  else
                    PrimaryButton(
                      label: 'Send Message',
                      onClick: () {
                        notifier.submitForm(ContactForm(name: name, email: email, message: message));
                      },
                    ),
                ]);
              } catch (e) {
                // Fallback for SSR or error states
                return div(classes: 'contact-form', [text('Loading contact form...')]);
              }
            },
      ),
    ]);
  }
}
