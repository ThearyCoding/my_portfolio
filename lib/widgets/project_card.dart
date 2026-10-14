import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'icons.dart';

class ProjectCard extends StatelessComponent {
  final String title;
  final String? subTitle;
  final String description;
  final String? appLogo;
  final String? playStoreUrl;
  final String? appStoreUrl;
  final String? githubUrl;
  final List<String>? technologies;

  const ProjectCard({
    super.key,
    required this.title,
    this.subTitle,
    required this.description,
    this.appLogo,
    this.playStoreUrl,
    this.appStoreUrl,
    this.githubUrl,
    this.technologies,
  });

  @override
  Component build(BuildContext context) {
    return article(classes: 'card project-card', [
      div(classes: 'project-header', [
        if (appLogo != null)
          img(src: appLogo!, alt: '$title logo', classes: 'project-logo')
        else
          div(classes: 'project-logo placeholder', [const Icon('phone')]),
        div(classes: 'project-title-group', [
          h3([Component.text(title)]),
          if (subTitle != null) span(classes: 'project-subtitle', [Component.text(subTitle!)]),
        ]),
      ]),
      p(classes: 'project-description', [Component.text(description)]),
      if (technologies != null && technologies!.isNotEmpty)
        div(classes: 'chips', [
          for (final tech in technologies!) span(classes: 'chip small', [Component.text(tech)]),
        ]),
      div(classes: 'project-links', [
        if (playStoreUrl != null)
          _badge(
            playStoreUrl!,
            'https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png',
            'Get it on Google Play',
            'play-badge',
          ),
        if (appStoreUrl != null)
          _badge(
            appStoreUrl!,
            'https://developer.apple.com/assets/elements/badges/download-on-the-app-store.svg',
            'Download on the App Store',
            'appstore-badge',
          ),
        if (githubUrl != null)
          a(
            href: githubUrl!,
            target: Target.blank,
            classes: 'button ghost small',
            attributes: const {'rel': 'noopener noreferrer'},
            [const Icon('github'), Component.text('View source')],
          ),
      ]),
    ]);
  }

  Component _badge(String href, String src, String alt, String imgClass) {
    return a(
      href: href,
      target: Target.blank,
      classes: 'store-badge',
      attributes: const {'rel': 'noopener noreferrer'},
      [img(src: src, alt: alt, classes: imgClass)],
    );
  }
}
