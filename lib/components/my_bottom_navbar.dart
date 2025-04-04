import "package:flutter/material.dart";
import "package:google_nav_bar/google_nav_bar.dart";

class MyBottomNavBar extends StatelessWidget {
  final Function(int)? onTabChange;

  const MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
          color: Colors.grey[400],
          activeColor: Colors.grey[700],
          mainAxisAlignment: MainAxisAlignment.center,
          tabBackgroundColor: Colors.grey.shade300,
          tabActiveBorder: Border.all(color: Colors.white),
          tabBorderRadius: 10,
          onTabChange: (int value) {
            onTabChange!(value);
          },
          tabs: [
            GButton(icon: Icons.home, text: "Shop"),
            GButton(icon: Icons.shopping_bag_rounded, text: "Cart")
          ]),
    );
  }
}
