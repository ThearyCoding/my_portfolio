import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../widgets/icons.dart';

class AboutSection extends StatelessComponent {
  const AboutSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'about', classes: 'section about reveal', [
      div(classes: 'section-head', [
        span(classes: 'eyebrow', [Component.text('01 — About')]),
        h2([Component.text('A developer who cares about the details')]),
      ]),
      div(classes: 'about-grid', [
        div(classes: 'about-text', [
          p([
            Component.text(
              "I'm a passionate Full Stack Developer from Phnom Penh, Cambodia "
              'with expertise in building scalable web and mobile applications. '
              'I specialize in Flutter for cross-platform development and Jaspr '
              'for modern web applications, while also working extensively with '
              'backend technologies like Node.js, ASP.NET, and Java Spring.',
            ),
          ]),
          p([
            Component.text(
              'I enjoy owning a product end to end: from the first sketch and the '
              'database schema, to payment integrations and shipping to the App Store '
              'and Google Play.',
            ),
          ]),
          div(classes: 'about-meta', [
            span([const Icon('map-pin'), Component.text('Phnom Penh, Cambodia')]),
            span([const Icon('code'), Component.text('Full Stack · Mobile · Web')]),
          ]),
        ]),
        div(classes: 'stats', [
          _stat('8', 'Programming languages'),
          _stat('2', 'Featured apps'),
          _stat('5', 'Databases & BaaS'),
          _stat('∞', 'Curiosity to learn'),
        ]),
      ]),
    ]);
  }

  Component _stat(String value, String label) {
    return div(classes: 'stat', [
      span(classes: 'stat-value gradient-text', [Component.text(value)]),
      span(classes: 'stat-label', [Component.text(label)]),
    ]);
  }
}
