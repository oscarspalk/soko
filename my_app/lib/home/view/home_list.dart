import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/l10n/l10n.dart';
import 'package:my_app/utils/route_pair.dart';
import 'package:my_app/utils/spacing.dart';
import 'package:my_app/utils/text_styles.dart';

final _routes = [
  RoutePair(
    name: (l10n) => l10n.trailAppBarTitle,
    route: '/trail',
  ),
];

class HomeList extends StatelessWidget {
  const HomeList({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return CustomScrollView(
      slivers: [
        CupertinoSliverNavigationBar(
          largeTitle: Text(l10n.homeAppBarTitle),
        ),
        SliverList.builder(
          itemCount: _routes.length,
          itemBuilder: (context, index) {
            final route = _routes[index];
            return CupertinoButton(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.lg,
                vertical: AppSpacing.sm,
              ),
              onPressed: () {
                context.go(route.route);
              },
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: CupertinoColors.activeBlue,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
                  margin: const EdgeInsets.fromLTRB(
                    AppSpacing.lg,
                    AppSpacing.sm,
                    0,
                    0,
                  ),
                  child: Text(
                    route.name(l10n),
                    style: AppTextStyle.h5(color: CupertinoColors.white),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
