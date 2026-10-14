import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ProcessSection extends StatelessComponent {
  const ProcessSection({super.key});

  static const _steps = [
    ('Discover', 'We talk through your goals, users and constraints to define the right scope.'),
    ('Design', 'I plan the architecture, data model and UI flow before writing code.'),
    ('Build', 'Iterative development with regular demos so you see progress every week.'),
    ('Launch', 'Deploy, publish to the stores, and keep improving after release.'),
  ];

  @override
  Component build(BuildContext context) {
    return section(id: 'process', classes: 'section reveal', [
      div(classes: 'section-head', [
        span(classes: 'eyebrow', [Component.text('05 — Process')]),
        h2([Component.text('How I work')]),
      ]),
      ol(classes: 'process', [
        for (var i = 0; i < _steps.length; i++)
          li(classes: 'process-step', [
            span(classes: 'step-num', [Component.text('0${i + 1}')]),
            h3([Component.text(_steps[i].$1)]),
            p([Component.text(_steps[i].$2)]),
          ]),
      ]),
    ]);
  }
}
