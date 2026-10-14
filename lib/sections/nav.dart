import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../widgets/icons.dart';

class NavSection extends StatefulComponent {
  const NavSection({super.key});

  @override
  State<NavSection> createState() => _NavSectionState();
}

class _NavSectionState extends State<NavSection> {
  bool open = false;

  static const _links = [
    ('About', '#about'),
    ('Services', '#services'),
    ('Skills', '#skills'),
    ('Projects', '#projects'),
    ('Process', '#process'),
  ];

  void _close() => setState(() => open = false);

  @override
  Component build(BuildContext context) {
    return header(classes: 'nav${open ? ' open' : ''}', [
      div(classes: 'nav-inner', [
        a(href: '#top', classes: 'brand', events: {'click': (_) => _close()}, [
          span(classes: 'brand-mark', [Component.text('CT')]),
          span(classes: 'brand-name', [Component.text('Chorn Theary')]),
        ]),
        nav(classes: 'nav-links', [
          for (final (label, href) in _links)
            a(href: href, events: {'click': (_) => _close()}, [Component.text(label)]),
          a(href: '#contact', classes: 'button small', events: {'click': (_) => _close()}, [
            Component.text("Let's talk"),
          ]),
        ]),
        button(
          classes: 'nav-toggle',
          attributes: {'aria-label': 'Toggle menu', 'aria-expanded': '$open'},
          onClick: () => setState(() => open = !open),
          [const Icon('menu')],
        ),
      ]),
    ]);
  }
}
