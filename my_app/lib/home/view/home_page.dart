import 'package:flutter/cupertino.dart';
import 'package:my_app/home/view/home_list.dart';
import 'package:my_app/l10n/l10n.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return CupertinoPageScaffold(child: HomeList());
  }
}
