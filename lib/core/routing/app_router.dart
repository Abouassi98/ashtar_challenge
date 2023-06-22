import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import '../../view/home/home_view.dart';
import '../../view/auth/login_in_view.dart';
import '../../view/home_shell/home_shell_view.dart';
import '../../view/route_error/route_error_view.dart';
import '../viewmodel/auth_viewmodel.dart';
import 'navigation_transitions.dart';

part 'app_router.g.dart';

// This or other ShellRoutes keys can be used to display a child route on a different Navigator.
// i.e: use the rootNavigatorKey for a child route inside a ShellRoute
// which need to take the full screen and ignore that Shell.
// https://pub.dev/documentation/go_router/latest/go_router/ShellRoute-class.html
final _rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  initialLocation: const LoginViewRoute().location,
  navigatorKey: _rootNavigatorKey,
  routes: [
    // Temporary using generated routes separately to be able to use
    // StatefulShellRoute until it's supported by app_route_builder.
    // TODO: migrate StatefulShellRoute to code gen and use $appRoutes:
    // https://github.com/flutter/flutter/issues/127371

    $loginViewRoute,
    // Like ShellRoute but can maintain the state of the Navigators for each branch.
    StatefulShellRoute.indexedStack(
      pageBuilder: (_, state, navigationShell) {
        return FadeTransitionPage(
          state.pageKey,
          // Return the widget that implements the custom shell.
          // The StatefulNavigationShell is passed to be able access the state
          // of the shell and to navigate to other branches in a stateful way.
          HomeShellScreen(
            navigationShell: navigationShell,
            // This key fixes ShellRoute bug with CupertinoTabScaffold:
            // https://github.com/flutter/flutter/issues/113757
            key: GlobalKey(debugLabel: "HomeShellScreen"),
          ),
        );
      },
      // Each separate stateful navigation tree (a Navigator) is represented by
      // a StatefulShellBranch, which defines the routes that will be placed on that
      // Navigator. StatefulShellBranch also makes it possible to configure things like:
      // - an (optional) Navigator key. It isn't necessary to provide a navigatorKey
      //   if it isn't needed elsewhere. If not provided, a default key will be used.
      // - a default location (i.e. the location the branch will be navigated
      //   to when loading it for the first time) etc.

      branches: <StatefulShellBranch>[
        StatefulShellBranch(
          routes: [
            $homeRoute,
          ],
        ),
        StatefulShellBranch(
          routes: [
            $homeRoute,
          ],
        ),
        StatefulShellBranch(
          routes: [
            $homeRoute,
          ],
        ),
        StatefulShellBranch(
          routes: [
            $homeRoute,
          ],
        ),
      ],
    ),
  ],
  redirect: (BuildContext context, GoRouterState state) async {
    RxBool isAuthenticated =
        await Get.find<AuthViewModel>().getCurrentUser() != null
            ? true.obs
            : false.obs;

    debugPrint('object3=$isAuthenticated');
    final allowedRoutes = [
      const LoginViewRoute().location,
    ];

    if (isAuthenticated.isTrue &&
        state.location.startsWith(const LoginViewRoute().location)) {
      return const HomeRoute().location;
    }
    if (isAuthenticated.isFalse) {
      // Return null (no redirecting) if the route is allowed for
      // unAuthenticated users or else redirect to login page.
      if (allowedRoutes.any(state.location.startsWith)) return null;
      return const LoginViewRoute().location;
    }

    return null;
  },
  errorBuilder: (_, state) => RouteErrorView(state.error),
);

// Return null (no redirecting) if the user is authenticated.

// @TypedGoRoute<SplashRoute>(path: '/')
// class SplashRoute extends GoRouteData {
//   const SplashRoute();

//   @override
//   Page<void> buildPage(BuildContext context, GoRouterState state) =>
//       FadeTransitionPage(state.pageKey, const SplashView());
// }

@TypedGoRoute<LoginViewRoute>(path: '/login')
class LoginViewRoute extends GoRouteData {
  const LoginViewRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      FadeTransitionPage(state.pageKey, const LogInView());
}

@TypedGoRoute<HomeRoute>(
  path: '/home',
  routes: [],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();
}
