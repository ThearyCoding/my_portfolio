import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'sections/nav.dart';
import 'sections/hero.dart';
import 'sections/about.dart';
import 'sections/skills.dart';
import 'sections/projects.dart';
import 'sections/contact.dart';
import 'sections/footer.dart';

class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'page', [
      const NavSection(),
      main_([
        const HeroSection(),
        const AboutSection(),
        const SkillsSection(),
        const ProjectsSection(),
        const ContactSection(),
        const FooterSection(),
      ]),
    ]);
  }
}
