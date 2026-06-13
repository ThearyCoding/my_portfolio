import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class FooterSection extends StatelessComponent {
  const FooterSection({super.key});

  @override
  Component build(BuildContext context) {
    return footer(classes: 'footer', [
      Component.text('© ${DateTime.now().year} Chorn Theary — Built with Jaspr'),
    ]);
  }
}
