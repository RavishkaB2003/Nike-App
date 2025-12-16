import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class BottomNavBar extends StatelessWidget {
  //ontabchange function
  void Function(int)? onTabChange;

  BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.grey[200],
      child: GNav(
        textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        mainAxisAlignment: MainAxisAlignment.center,
        gap: 10,
        color: Colors.grey[600],
        activeColor: Colors.grey[800],
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.white,
        onTabChange: (value) => onTabChange!(value),

        tabs: const [
          //Home
          GButton(icon: Icons.shop, text: 'Shop'),

          //Cart
          GButton(icon: Icons.shopping_cart, text: 'Cart'),
        ],
      ),
    );
  }
}
