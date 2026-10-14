import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// Inline SVG icons (stroke-based, inherit `currentColor`).
class Icon extends StatelessComponent {
  final String name;
  final String classes;

  const Icon(this.name, {super.key, this.classes = 'icon'});

  static const _paths = <String, String>{
    'github':
        '<path d="M9 19c-4.3 1.4-4.3-2.5-6-3m12 5v-3.5c0-1 .1-1.4-.5-2 2.8-.3 5.5-1.4 5.5-6a4.6 4.6 0 0 0-1.3-3.2 4.2 4.2 0 0 0-.1-3.2s-1.1-.3-3.5 1.3a12.3 12.3 0 0 0-6.2 0C6.5 2.8 5.4 3.1 5.4 3.1a4.2 4.2 0 0 0-.1 3.2A4.6 4.6 0 0 0 4 9.5c0 4.6 2.7 5.7 5.5 6-.6.6-.6 1.2-.5 2V21"/>',
    'linkedin':
        '<path d="M16 8a6 6 0 0 1 6 6v7h-4v-7a2 2 0 0 0-4 0v7h-4v-7a6 6 0 0 1 6-6z"/><rect x="2" y="9" width="4" height="12"/><circle cx="4" cy="4" r="2"/>',
    'mail':
        '<rect x="2" y="4" width="20" height="16" rx="2"/><path d="m22 7-10 6L2 7"/>',
    'arrow-right': '<path d="M5 12h14M13 5l7 7-7 7"/>',
    'arrow-up': '<path d="M12 19V5M5 12l7-7 7 7"/>',
    'external': '<path d="M15 3h6v6M10 14 21 3M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"/>',
    'phone': '<rect x="6" y="2" width="12" height="20" rx="2"/><path d="M11 18h2"/>',
    'globe':
        '<circle cx="12" cy="12" r="10"/><path d="M2 12h20M12 2a15 15 0 0 1 0 20M12 2a15 15 0 0 0 0 20"/>',
    'server':
        '<rect x="2" y="3" width="20" height="8" rx="2"/><rect x="2" y="13" width="20" height="8" rx="2"/><path d="M6 7h.01M6 17h.01"/>',
    'cloud': '<path d="M17.5 19a4.5 4.5 0 1 0-1.4-8.8A7 7 0 1 0 4 15.5 4 4 0 0 0 7 19z"/>',
    'map-pin': '<path d="M20 10c0 6-8 12-8 12S4 16 4 10a8 8 0 1 1 16 0z"/><circle cx="12" cy="10" r="3"/>',
    'code': '<path d="m16 18 6-6-6-6M8 6l-6 6 6 6"/>',
    'database':
        '<ellipse cx="12" cy="5" rx="9" ry="3"/><path d="M3 5v14c0 1.7 4 3 9 3s9-1.3 9-3V5M3 12c0 1.7 4 3 9 3s9-1.3 9-3"/>',
    'wrench':
        '<path d="M14.7 6.3a1 1 0 0 0 0 1.4l1.6 1.6a1 1 0 0 0 1.4 0l3.8-3.8a6 6 0 0 1-7.9 7.9l-6.9 6.9a2.1 2.1 0 0 1-3-3l6.9-6.9a6 6 0 0 1 7.9-7.9z"/>',
    'menu': '<path d="M4 6h16M4 12h16M4 18h16"/>',
    'sparkle': '<path d="M12 3l1.9 5.8L20 11l-6.1 2.2L12 19l-1.9-5.8L4 11l6.1-2.2z"/>',
  };

  @override
  Component build(BuildContext context) {
    return span(classes: classes, attributes: const {'aria-hidden': 'true'}, [
      RawText(
        '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" '
        'stroke-linecap="round" stroke-linejoin="round">${_paths[name] ?? ''}</svg>',
      ),
    ]);
  }
}
