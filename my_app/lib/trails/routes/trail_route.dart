import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/trails/view/trail_page.dart';

class TrailRoute extends GoRouteData {
  const TrailRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const TrailPage();
}
