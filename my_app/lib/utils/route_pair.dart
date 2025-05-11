import 'package:my_app/l10n/l10n.dart';

class RoutePair {
  RoutePair({required this.name, required this.route});

  final String Function(AppLocalizations l10n) name;
  final String route;
}
