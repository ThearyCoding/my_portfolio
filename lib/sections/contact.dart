import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../widgets/icons.dart';

class ContactSection extends StatelessComponent {
  const ContactSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'contact', classes: 'section reveal', [
      div(classes: 'contact-card', [
        span(classes: 'eyebrow', [Component.text('06 — Contact')]),
        h2([
          Component.text('Have an idea? '),
          span(classes: 'gradient-text', [Component.text("Let's build it.")]),
        ]),
        p(classes: 'lead', [
          Component.text(
            "Whether it's a mobile app, a website or a backend, I'd love to hear about it. "
            'I usually reply within a day.',
          ),
        ]),
        a(href: 'mailto:chorntheary12@email.com', classes: 'button big', [
          const Icon('mail'),
          Component.text('chorntheary12@email.com'),
        ]),
        div(classes: 'contact-links', [
          _link('https://www.linkedin.com/in/chorn-theary-22b191332', 'linkedin', 'LinkedIn',
              'chorn-theary'),
          _link('https://github.com/ThearyCoding', 'github', 'GitHub', '@ThearyCoding'),
        ]),
      ]),
    ]);
  }

  Component _link(String href, String icon, String label, String handle) {
    return a(
      href: href,
      target: Target.blank,
      classes: 'contact-link',
      attributes: const {'rel': 'noopener noreferrer'},
      [
        Icon(icon),
        div([
          strong([Component.text(label)]),
          small([Component.text(handle)]),
        ]),
        const Icon('external', classes: 'icon arrow'),
      ],
    );
  }
}
