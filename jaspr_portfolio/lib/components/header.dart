import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';
import '../constants/config.dart';

class Header extends StatelessComponent {
  const Header({super.key});

  @override
  Component build(BuildContext context) {
    var activePath = context.url;

    return header(
      classes: 'fixed top-5 left-1/2 -translate-x-1/2 z-[1000] w-full px-5 flex justify-center',
      [
        nav(
          classes:
              'flex items-center p-2 rounded-full shadow-[0_4px_20px_rgba(0,0,0,0.3)] gap-1 bg-[#1F1F1F] border border-[#333333]',
          [
            // Left nav group
            _NavItem(
              label: 'Home',
              path: '$basePath/',
              isActive: activePath == '$basePath/',
            ),
            _NavItem(
              label: 'About',
              path: '$basePath/about',
              isActive: activePath == '$basePath/about',
            ),
            _NavItem(
              label: 'Services',
              path: '$basePath/',
              isActive: false,
            ),

            // Center Logo
            div(classes: 'flex items-center gap-2 mx-4', [
              // Orange circle with initials
              div(
                classes:
                    'w-9 h-9 rounded-full bg-[#FD853A] flex items-center justify-center text-white font-bold text-sm',
                [text('MA')],
              ),
              // Brand name
              span(
                classes: 'text-white font-bold text-base tracking-wide uppercase',
                [text('MATEF')],
              ),
            ]),

            // Right nav group
            _NavItem(
              label: 'Resume',
              path: '$basePath/',
              isActive: false,
            ),
            _NavItem(
              label: 'Projects',
              path: '$basePath/projects',
              isActive: activePath == '$basePath/projects',
            ),
            _NavItem(
              label: 'Contact',
              path: '$basePath/contact',
              isActive: activePath == '$basePath/contact',
            ),
          ],
        ),
      ],
    );
  }
}

class _NavItem extends StatelessComponent {
  final String label;
  final String path;
  final bool isActive;

  const _NavItem({
    required this.label,
    required this.path,
    this.isActive = false,
  });

  @override
  Component build(BuildContext context) {
    final activeClasses = 'bg-[#FD853A] text-[#171717] font-bold';
    final defaultClasses = 'text-white hover:scale-105';

    return Link(
      to: path,
      child: text(label),
      classes:
          'inline-block px-5 py-2.5 rounded-full cursor-pointer transition-all duration-300 no-underline text-sm font-medium ${isActive ? activeClasses : defaultClasses}',
    );
  }
}
