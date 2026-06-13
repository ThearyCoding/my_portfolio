import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class NavSection extends StatelessComponent {
  const NavSection({super.key});

  @override
  Component build(BuildContext context) {
    return header(classes: 'nav', [
      div(classes: 'nav-inner', [
        a(href: '#top', classes: 'brand', [Component.text('Chorn Theary')]),
        nav([
          a(href: '#about', [Component.text('About')]),
          a(href: '#skills', [Component.text('Skills')]),
          a(href: '#projects', [Component.text('Projects')]),
          a(href: '#contact', [Component.text('Contact')]),
        ]),
      ]),
    ]);
  }
}
