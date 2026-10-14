import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../widgets/icons.dart';

class HeroSection extends StatelessComponent {
  const HeroSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'top', classes: 'hero', [
      div(classes: 'hero-copy', [
        span(classes: 'pill', [
          span(classes: 'pulse', []),
          Component.text('Available for new projects'),
        ]),
        h1([
          Component.text("Hi, I'm "),
          span(classes: 'gradient-text', [Component.text('Chorn Theary')]),
        ]),
        div(classes: 'roles', [
          Component.text('I build '),
          span(classes: 'role-rotator', [
            span([Component.text('mobile apps.')]),
            span([Component.text('web experiences.')]),
            span([Component.text('scalable APIs.')]),
            span([Component.text('mobile apps.')]),
          ]),
        ]),
        p(classes: 'lead', [
          Component.text(
            'Full Stack Developer from Phnom Penh, Cambodia. I turn ideas into fast, '
            'polished products with Flutter, Jaspr, and modern backend tech.',
          ),
        ]),
        div(classes: 'cta', [
          a(href: '#projects', classes: 'button', [
            Component.text('See my work'),
            const Icon('arrow-right'),
          ]),
          a(href: '#contact', classes: 'button ghost', [Component.text('Contact me')]),
        ]),
        div(classes: 'socials', [
          _social('https://github.com/ThearyCoding', 'github', 'GitHub'),
          _social('https://www.linkedin.com/in/chorn-theary-22b191332', 'linkedin', 'LinkedIn'),
          _social('mailto:chorntheary12@email.com', 'mail', 'Email'),
        ]),
      ]),
      div(classes: 'hero-visual', [
        div(classes: 'code-window', [
          div(classes: 'code-bar', [
            span(classes: 'dot red', []),
            span(classes: 'dot yellow', []),
            span(classes: 'dot green', []),
            span(classes: 'code-file', [Component.text('theary.dart')]),
          ]),
          pre([
            code([
              RawText(
                '<span class="k">final</span> dev = <span class="t">Developer</span>(\n'
                '  name: <span class="s">\'Chorn Theary\'</span>,\n'
                '  location: <span class="s">\'Phnom Penh 🇰🇭\'</span>,\n'
                '  stack: [\n'
                '    <span class="s">\'Flutter\'</span>, <span class="s">\'Jaspr\'</span>,\n'
                '    <span class="s">\'Node.js\'</span>, <span class="s">\'Spring\'</span>,\n'
                '  ],\n'
                '  coffee: <span class="n">true</span>,\n'
                ');\n\n'
                '<span class="k">await</span> dev.<span class="f">build</span>(yourIdea);'
                '<span class="caret"></span>',
              ),
            ]),
          ]),
        ]),
        div(classes: 'float-card fc-1', [
          const Icon('phone'),
          div([
            strong([Component.text('iOS + Android')]),
            small([Component.text('Shipped to both stores')]),
          ]),
        ]),
        div(classes: 'float-card fc-2', [
          const Icon('sparkle'),
          div([
            strong([Component.text('25+ technologies')]),
            small([Component.text('Frontend to cloud')]),
          ]),
        ]),
      ]),
    ]);
  }

  Component _social(String href, String icon, String label) {
    return a(
      href: href,
      classes: 'social',
      target: href.startsWith('http') ? Target.blank : null,
      attributes: {'aria-label': label, 'rel': 'noopener noreferrer'},
      [Icon(icon)],
    );
  }
}
