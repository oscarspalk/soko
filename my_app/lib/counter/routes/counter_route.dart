import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/counter/view/counter_page.dart';

part 'counter_route.g.dart';

@TypedGoRoute<CounterRoute>(
  path: '/',
)
class CounterRoute extends GoRouteData {
  const CounterRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const CounterPage();
}
