import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class AboutSection extends StatelessComponent {
  const AboutSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'about', classes: 'section', [
      h2([Component.text('About me')]),
      p([
        Component.text(
         'I\'m a passionate Full Stack Developer from Phnom Penh, Cambodia '
            'with expertise in building scalable web and mobile applications. '
            'I specialize in Flutter for cross-platform development and Jaspr '
            'for modern web applications, while also working extensively with '
            'backend technologies like Node.js, ASP.NET, and Java Spring.'
        ),
      ]),
    ]);
  }
}
