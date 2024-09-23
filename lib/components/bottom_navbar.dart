import 'package:book_court_app/const.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavbar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNavbar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      // color: Colors.grey[50],
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        color: veryLightBlue,
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: lightBlue,
        tabBackgroundColor: backgroundColor,
        tabBorderRadius: 24,
        tabActiveBorder: Border.all(color: lightBlue),
        padding: const EdgeInsets.all(12),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
            gap: 5,
          ),
          GButton(
            icon: Icons.history,
            text: 'History',
            gap: 5,
          ),
          GButton(
            icon: Icons.groups,
            text: 'Community',
            gap: 5,
          ),
          GButton(
            icon: Icons.person,
            text: 'Profile',
            gap: 5,
          )
        ],
      ),
    );
  }
}
