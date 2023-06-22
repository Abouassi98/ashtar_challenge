import 'package:ashtar_challenge/view/home_shell/scaffold_nav_bar_view.dart';
import 'package:ashtar_challenge/view/home_shell/scaffold_navigation_rail_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';



/// Builds the "shell" for the home by building a Scaffold with a persistent
/// BottomNavigationBar or similar, where [navigationShell] is placed in the body of the Scaffold.
class HomeShellScreen extends StatelessWidget {
  const HomeShellScreen({required this.navigationShell, super.key});

  /// The navigation shell and container for the branch Navigators.
  final StatefulNavigationShell navigationShell;
  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.sizeOf(context).width < 800) {
      return ScaffoldWithNavigationBar(
        body: navigationShell,
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: _goBranch,
      );
    } else {
      return ScaffoldWithNavigationRail(
        body: navigationShell,
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: _goBranch,
      );
    }
  }
}
