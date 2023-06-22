import 'package:flutter/material.dart';

class ScaffoldWithNavigationBar extends StatelessWidget {
  const ScaffoldWithNavigationBar({
    super.key,
    required this.body,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });
  final Widget body;
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: body,
        bottomNavigationBar: NavigationBar(
          elevation: 5,
          backgroundColor: Colors.white,
          selectedIndex: selectedIndex,
          shadowColor: const Color(
            0xff3E7082,
          ),
          destinations: const [
            NavigationDestination(label: 'Section A', icon: Icon(Icons.home)),
            NavigationDestination(
                label: 'Section B', icon: Icon(Icons.settings)),
          ],
          onDestinationSelected: onDestinationSelected,
        ));
  }
}
