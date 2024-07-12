import 'package:flutter/material.dart';

import 'bottom_nav_item.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      height: 60,
      color: Colors.white,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavItemWidget(
            svgTitle: 'assets/icons/calendar.svg',
            title: 'Today',
          ),
          BottomNavItemWidget(
             svgTitle: 'assets/icons/gym.svg',
            title: 'All Exercises',
            isActive: true,
          ),  
          BottomNavItemWidget(
             svgTitle: 'assets/icons/Settings.svg',
            title: 'Settings',
          ),  
        ],
      ),
    );
  }
}
