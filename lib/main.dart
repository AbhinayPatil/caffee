import 'package:cafin/screens/details_screen.dart';
import 'package:cafin/screens/home_screen.dart';
import 'package:cafin/screens/login_screen.dart';
import 'package:cafin/widgets/bottom_navigator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoginScreen.routeName,
      routes: {
        MyBottomNavigator.routeName: (context) => const MyBottomNavigator(),
        LoginScreen.routeName: (context) => LoginScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        DetailsScreen.routeName: (context) => DetailsScreen(),
      },
    );
  }
}
