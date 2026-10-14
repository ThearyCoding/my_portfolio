import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../widgets/icons.dart';

class SkillsSection extends StatelessComponent {
  const SkillsSection({super.key});

  static const _categories = [
    (
      'code',
      'Languages',
      ['Dart', 'TypeScript', 'JavaScript', 'Java', 'PHP', 'C#', 'Python', 'HTML/CSS'],
    ),
    ('globe', 'Frontend', ['Flutter', 'Jaspr', 'React', 'TypeScript/React']),
    (
      'server',
      'Backend',
      ['Node.js', 'Express.js', 'ASP.NET', 'Java Spring', 'PHP Laravel', 'REST APIs'],
    ),
    ('database', 'Databases', ['MongoDB', 'MySQL', 'SQL Server', 'Firebase', 'Supabase']),
    (
      'cloud',
      'Cloud & DevOps',
      ['AWS', 'Microsoft Azure', 'DigitalOcean', 'Cloudinary', 'Cloudflare'],
    ),
    ('wrench', 'Tools', ['Git', 'Firebase', 'Supabase', 'Cloudinary', 'API Integration']),
  ];

  static const _ticker = [
    'Flutter', 'Dart', 'Jaspr', 'React', 'TypeScript', 'Node.js', 'Express',
    'ASP.NET', 'Spring', 'Laravel', 'MongoDB', 'MySQL', 'Firebase', 'Supabase',
    'AWS', 'Azure', 'Cloudflare', 'Git',
  ];

  @override
  Component build(BuildContext context) {
    return section(id: 'skills', classes: 'section reveal', [
      div(classes: 'section-head', [
        span(classes: 'eyebrow', [Component.text('03 — Skills')]),
        h2([Component.text('Tech stack & tools')]),
      ]),
      div(classes: 'ticker', attributes: const {'aria-hidden': 'true'}, [
        div(classes: 'ticker-track', [
          // Rendered twice so the loop is seamless.
          for (var i = 0; i < 2; i++)
            for (final t in _ticker) span(classes: 'ticker-item', [Component.text(t)]),
        ]),
      ]),
      div(classes: 'skills-grid', [
        for (final (icon, title, items) in _categories)
          div(classes: 'card skill-card', [
            div(classes: 'skill-card-head', [
              Icon(icon),
              h3([Component.text(title)]),
            ]),
            div(classes: 'chips', [
              for (final item in items) span(classes: 'chip', [Component.text(item)]),
            ]),
          ]),
      ]),
    ]);
  }
}
