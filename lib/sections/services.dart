import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../widgets/icons.dart';

class ServicesSection extends StatelessComponent {
  const ServicesSection({super.key});

  static const _services = [
    (
      'phone',
      'Mobile Apps',
      'Cross-platform Flutter apps for iOS and Android, from UI to store release.',
    ),
    (
      'globe',
      'Web Development',
      'Fast, modern websites and web apps with Jaspr, React and TypeScript.',
    ),
    (
      'server',
      'Backend & APIs',
      'REST APIs with Node.js, ASP.NET, Spring or Laravel, backed by solid data models.',
    ),
    (
      'cloud',
      'Cloud & Integrations',
      'Deployments on AWS, Azure or DigitalOcean, plus payments like ABA KHQR.',
    ),
  ];

  @override
  Component build(BuildContext context) {
    return section(id: 'services', classes: 'section reveal', [
      div(classes: 'section-head', [
        span(classes: 'eyebrow', [Component.text('02 — Services')]),
        h2([Component.text('What I can do for you')]),
      ]),
      div(classes: 'services-grid', [
        for (final (icon, title, body) in _services)
          div(classes: 'card service-card', [
            div(classes: 'service-icon', [Icon(icon)]),
            h3([Component.text(title)]),
            p([Component.text(body)]),
          ]),
      ]),
    ]);
  }
}
