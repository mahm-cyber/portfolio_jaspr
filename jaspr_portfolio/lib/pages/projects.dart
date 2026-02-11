import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_riverpod/jaspr_riverpod.dart';
import '../components/cards.dart';
import '../components/embedded_counter.dart';
import '../constants/theme.dart';
import '../providers/project_provider.dart';

class Projects extends StatelessComponent {
  const Projects({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'projects-page', [
      h1([Component.text('My Projects')]),

      // Project Grid
      div(classes: 'project-grid', [
        Builder(
          builder:
              (
                context,
              ) {
                final projectsAsync = context.watch(projectsProvider);

                return projectsAsync.when(
                  data: (projects) => .fragment(
                    [
                      for (var project in projects)
                        ProjectCard(
                          title: project.title,
                          description: project.description,
                          imageUrl: project.imageUrl,
                          tags: project.tags,
                        ),
                    ],
                  ),
                  loading: () => div(classes: 'loading', [Component.text('Loading projects...')]),
                  error: (err, stack) => div(classes: 'error', [Component.text('Error loading projects: $err')]),
                );
              },
        ),
      ]),

      // Flutter Integration Section
      section(classes: 'flutter-demo', [
        h2([Component.text('Interactive Flutter Demo')]),
        p([Component.text('Below is a real Flutter app embedded in this Jaspr website.')]),
        div(classes: 'embed-container', [
          EmbeddedCounter(
            count: 0,
            onChange: (val) {},
          ),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.projects-page', [
      css('&').styles(
        display: Display.flex,
        width: 100.percent,
        maxWidth: 1200.px,
        padding: Padding.only(top: 100.px, bottom: 60.px),
        margin: Margin.symmetric(horizontal: Unit.auto),
        flexDirection: FlexDirection.column,
        alignItems: AlignItems.center,
      ),
      css('h1').styles(
        margin: Margin.only(bottom: 40.px),
        color: AppColors.primary,
        fontSize: 48.px,
      ),
      css('.project-grid', [
        css('&').styles(
          display: Display.grid,
          width: 100.percent,
          padding: Padding.symmetric(horizontal: 20.px),
          raw: {'gap': '24px'},
        ),
        // Use raw CSS for grid-template-columns as type-safe API is tricky
        css('&').styles(raw: {'grid-template-columns': 'repeat(auto-fit, minmax(300px, 1fr))'}),
      ]),
      css('.flutter-demo').styles(
        width: 100.percent,
        margin: Margin.only(top: 80.px),
        textAlign: TextAlign.center,
      ),
      css('.embed-container').styles(
        width: 100.percent,
        height: 400.px,
        maxWidth: 600.px,
        margin: Margin.symmetric(horizontal: Unit.auto, vertical: 20.px),
        border: Border.all(color: AppColors.surface, width: 2.px),
        radius: BorderRadius.circular(20.px),
        overflow: Overflow.hidden,
      ),
    ]),
  ];
}
