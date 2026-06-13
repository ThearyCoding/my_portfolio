import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ProjectCard extends StatelessComponent {
  final String title;
  final String? subTitle;  // New subtitle field
  final String description;
  final String? appLogo;
  final String? playStoreUrl;
  final String? appStoreUrl;
  final String? githubUrl;
  final List<String>? technologies;

  const ProjectCard({
    super.key,
    required this.title,
    this.subTitle,  // Make it optional
    required this.description,
    this.appLogo,
    this.playStoreUrl,
    this.appStoreUrl,
    this.githubUrl,
    this.technologies,
  });

  @override
  Component build(BuildContext context) {
    return div(classes: 'card project-card', [
      // Header with logo and title
      div(classes: 'project-header', [
        if (appLogo != null)
          div(classes: 'project-logo-wrapper', [
            img(src: appLogo!, alt: '$title logo', classes: 'project-logo'),
          ])
        else
          div(classes: 'project-logo-placeholder', [
            span(classes: 'project-icon', [Component.text('📱')]),
          ]),
        
        // Title and subtitle container
        div(classes: 'project-title-group', [
          h3([Component.text(title)]),
          if (subTitle != null)
            span(classes: 'project-subtitle', [Component.text(subTitle!)]),
        ]),
      ]),
      
      // Description
      p(classes: 'project-description', [Component.text(description)]),
      
      // Technologies used (chips)
      if (technologies != null && technologies!.isNotEmpty)
        div(classes: 'project-tech', [
          ...technologies!.map((tech) => 
            span(classes: 'tech-chip', [Component.text(tech)])
          ),
        ]),
      
      // App Store Badges
      div(classes: 'store-badges', [
        if (playStoreUrl != null)
          a(
            href: playStoreUrl!,
            target: Target.blank,
            attributes: const {'rel': 'noopener noreferrer'},
            classes: 'store-badge',
            [
              img(
                src: 'https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png',
                alt: 'Get it on Google Play',
                classes: 'play-badge',
              ),
            ],
          ),
        if (appStoreUrl != null)
          a(
            href: appStoreUrl!,
            target: Target.blank,
            attributes: const {'rel': 'noopener noreferrer'},
            classes: 'store-badge',
            [
              img(
                src: 'https://developer.apple.com/assets/elements/badges/download-on-the-app-store.svg',
                alt: 'Download on the App Store',
                classes: 'appstore-badge',
              ),
            ],
          ),
      ]),
      
      // GitHub link (optional)
      if (githubUrl != null)
        div(classes: 'github-link', [
          a(
            href: githubUrl!,
            target: Target.blank,
            attributes: const {'rel': 'noopener noreferrer'},
            [
              span(classes: 'github-icon', [Component.text('📦')]),
              Component.text(' View Source Code'),
            ],
          ),
        ]),
    ]);
  }
}