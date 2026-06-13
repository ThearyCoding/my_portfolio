import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ContactSection extends StatelessComponent {
  const ContactSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'contact', classes: 'section', [
      h2([Component.text('Contact')]),
      p([Component.text('Want to work together? Message me:')]),
      ul([
        li([
          Component.text('Email: '),
          a(
            href: 'mailto:chorntheary12@email.com',
            [Component.text('chorntheary12@email.com')],
          ),
        ]),
        li([
          Component.text('LinkedIn: '),
          a(
            href: 'https://www.linkedin.com/in/chorn-theary-22b191332',
            target: Target.blank,
            attributes: const {'rel': 'noopener noreferrer'},
            [Component.text('chorn-theary-22b191332')],
          ),
        ]),
        li([
          Component.text('GitHub: '),
          a(
            href: 'https://github.com/ThearyCoding',
            target: Target.blank,
            attributes: const {'rel': 'noopener noreferrer'},
            [Component.text('github.com/ThearyCoding')],
          ),
        ]),
      ]),
    ]);
  }
  
}
