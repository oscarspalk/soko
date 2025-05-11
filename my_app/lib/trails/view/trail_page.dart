import 'package:flutter/cupertino.dart';
import 'package:my_app/l10n/l10n.dart';

class TrailPage extends StatelessWidget {
  const TrailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar.large(
        previousPageTitle: l10n.homeAppBarTitle,
        largeTitle: Text(l10n.trailAppBarTitle),
      ),
      child: Placeholder(),
    );
  }
}
