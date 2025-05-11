import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/activities/view/activity_page.dart';
import 'package:my_app/home/view/home_page.dart';
import 'package:my_app/trails/view/trail_page.dart';

part 'home_route.g.dart';

@TypedGoRoute<HomeRoute>(
  name: 'Home',
  path: '/',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<TrailRoute>(path: '/trail'),
    TypedGoRoute<ActivityRoute>(path: '/activity')
  ],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomePage();
}

class TrailRoute extends GoRouteData {
  const TrailRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const TrailPage();
}

class ActivityRoute extends GoRouteData {
  const ActivityRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ActivityPage();
}
