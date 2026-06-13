import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class HeroSection extends StatelessComponent {
  const HeroSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'top', classes: 'hero', [
      h1([Component.text("Hi, I'm Chorn Theary 👋")]),
      p([Component.text('I am a Software Developer who likes building mobile apps and websites.')]),
      div(classes: 'cta', [
        a(href: '#contact', classes: 'button', [Component.text('Contact me')]),
        a(href: '#projects', classes: 'button secondary', [Component.text('See projects')]),
      ]),
    ]);
  }
}
