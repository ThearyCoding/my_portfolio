import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'sections/nav.dart';
import 'sections/hero.dart';
import 'sections/about.dart';
import 'sections/services.dart';
import 'sections/skills.dart';
import 'sections/process.dart';
import 'sections/projects.dart';
import 'sections/contact.dart';
import 'sections/footer.dart';

class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'page', [
      div(classes: 'bg-glow', attributes: const {'aria-hidden': 'true'}, [
        span(classes: 'blob b1', []),
        span(classes: 'blob b2', []),
        span(classes: 'blob b3', []),
      ]),
      const NavSection(),
      main_([
        const HeroSection(),
        const AboutSection(),
        const ServicesSection(),
        const SkillsSection(),
        const ProjectsSection(),
        const ProcessSection(),
        const ContactSection(),
      ]),
      const FooterSection(),
    ]);
  }
}
