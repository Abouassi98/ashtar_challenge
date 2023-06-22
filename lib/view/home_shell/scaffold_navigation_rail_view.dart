import 'package:ashtar_challenge/core/styles/sizes.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_text.dart';

class ScaffoldWithNavigationRail extends StatelessWidget {
  const ScaffoldWithNavigationRail({
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
      body: Row(
        children: [
          // Fixed navigation rail on the left (start)
          Flexible(
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(
                      0xff3E7082,
                    ),
                    Color(
                      0xff2F6A7C,
                    ),
                    Color(
                      0xff44767B,
                    ),
                    Color(
                      0xff44767B,
                    ),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: Sizes.appBarHeight56),
                child: NavigationRail(
                  selectedIndex: selectedIndex,
                  selectedIconTheme: const IconThemeData(color: Colors.red),
                  backgroundColor: Colors.transparent,
                  onDestinationSelected: onDestinationSelected,
                  labelType: NavigationRailLabelType.selected,
                  destinations: const [
                    NavigationRailDestination(
                      label: SizedBox(),
                      selectedIcon: CustomSelectedIcon(
                          icon: Icons.home, title: 'DashBoard'),
                      icon: CustomIcon(icon: Icons.home, title: 'DashBoard'),
                    ),
                    NavigationRailDestination(
                      label: SizedBox(),
                      icon: CustomIcon(icon: Icons.schedule, title: 'Schedule'),
                    ),
                    NavigationRailDestination(
                      label: SizedBox(),
                      icon: CustomIcon(
                          icon: Icons.computer_sharp, title: 'Courses'),
                    ),
                    NavigationRailDestination(
                      label: SizedBox(),
                      icon: CustomIcon(icon: Icons.grade, title: 'Gradebook'),
                    ),
                    NavigationRailDestination(
                      label: SizedBox(),
                      icon: CustomIcon(
                          icon: Icons.settings, title: 'performance'),
                    ),
                    NavigationRailDestination(
                      label: SizedBox(),
                      icon: CustomIcon(
                          icon: Icons.announcement, title: 'Announcment'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const VerticalDivider(thickness: 1, width: 1),
          // Main content on the right (end)
          Expanded(
            flex: 4,
            child: body,
          ),
        ],
      ),
    );
  }
}

class CustomIcon extends StatelessWidget {
  final IconData icon;
  final String title;
  const CustomIcon({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.white),
          const SizedBox(width: Sizes.marginH12),
          CustomText(text: title, fontSize: Sizes.font14, color: Colors.white),
        ],
      ),
    );
  }
}

class CustomSelectedIcon extends StatelessWidget {
  final IconData icon;
  final String title;

  const CustomSelectedIcon({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(Sizes.paddingH14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                icon,
                color: const Color(
                  0xff3E7082,
                ),
              ),
              const SizedBox(width: Sizes.marginH12),
              CustomText(
                text: title,
                fontWeight: FontWeight.bold,
                fontSize: Sizes.font14,
                color: const Color(
                  0xff3E7082,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
