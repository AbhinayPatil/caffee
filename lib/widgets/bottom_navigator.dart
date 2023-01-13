import 'package:cafin/screens/home_screen.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class MyBottomNavigator extends StatefulWidget {
  const MyBottomNavigator({super.key});
  static const routeName = "/bottom-navigator";

  @override
  State<MyBottomNavigator> createState() => _MyBottomNavigatorState();
}

class _MyBottomNavigatorState extends State<MyBottomNavigator> {
  int _selectedIndex = 0;
  final List<Widget> screens = <Widget>[
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens.elementAt(_selectedIndex),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 00, top: 0),
        child: FloatingNavbar(
          items: [
            FloatingNavbarItem(
              icon: Icons.home_outlined,
            ),
            FloatingNavbarItem(
              icon: Icons.person_outline,
            ),
            FloatingNavbarItem(
              icon: Icons.wallet_outlined,
            ),
            FloatingNavbarItem(
              icon: Icons.shopping_basket_outlined,
            ),
            FloatingNavbarItem(
              icon: Icons.messenger_outline,
            ),
          ],

          currentIndex: _selectedIndex,

          borderRadius: 10,
          backgroundColor: Colors.black54.withOpacity(.3),
          selectedBackgroundColor: Colors.black38.withOpacity(.5),
          itemBorderRadius: 100,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          iconSize: 20,
          onTap: _onItemTapped,
          //elevation: 5,
        ),
      ),
    );
  }
}
