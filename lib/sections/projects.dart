import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../widgets/project_card.dart';

class ProjectsSection extends StatelessComponent {
  const ProjectsSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'projects', classes: 'section reveal', [
      div(classes: 'section-head', [
        span(classes: 'eyebrow', [Component.text('04 — Projects')]),
        h2([Component.text('Selected work')]),
      ]),
      div(classes: 'cards', [
        const ProjectCard(
          title: 'NW KH',
          subTitle: 'Nutrition Warehouse KH', 
          description:
              'A comprehensive nutrition and wellness e-commerce app for Cambodia. '
              'Features product catalog with detailed nutritional information, '
              'secure payment integration with ABA KHQR, user accounts, order tracking, '
              'and personalized recommendations. Built with Flutter and Firebase.',
          appLogo: 'images/nw-logo.jpg',
          playStoreUrl: 'https://play.google.com/store/apps/details?id=com.nutritionwarehousekh.nw',
          appStoreUrl: 'https://apps.apple.com/kh/app/nw-kh/id6748672050',
          githubUrl: null,
          technologies: ['Flutter', 'Firebase', 'ABA KHQR'],
        ),
        const ProjectCard(
          title: 'Grocery App',
          subTitle: 'Full Stack E-Commerce Solution',  
          description:
              'A full-stack grocery shopping application with separate mobile app '
              'and backend API. Features include product browsing, cart management, '
              'user authentication, order processing, and real-time inventory tracking. '
              'Built with Flutter for mobile and Node.js/Express for the backend.',
          appLogo: 'images/grocery-logo.png',
          playStoreUrl: null,
          appStoreUrl: null,
          githubUrl: 'https://github.com/ThearyCoding/grocery-app',
          technologies: ['Flutter', 'Node.js', 'Express', 'MongoDB', 'REST API'],
        ),
      ]),
    ]);
  }
}