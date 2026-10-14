import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../widgets/icons.dart';

class FooterSection extends StatelessComponent {
  const FooterSection({super.key});

  @override
  Component build(BuildContext context) {
    return footer(classes: 'footer', [
      span([Component.text('© ${DateTime.now().year} Chorn Theary · Built with Jaspr 💙')]),
      a(href: '#top', classes: 'to-top', [
        Component.text('Back to top'),
        const Icon('arrow-up'),
      ]),
    ]);
  }
}
