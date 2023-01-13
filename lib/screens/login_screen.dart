import 'dart:math';
import 'dart:ui';

import 'package:cafin/screens/home_screen.dart';
import 'package:cafin/widgets/bottom_navigator.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});
  static const routeName = "/login-screen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final String imageUrl = "";
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Widget myTextField(TextEditingController _controller, String _label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        cursorColor: Colors.white,
        decoration: InputDecoration(
          disabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white54),
          ),
          label: Text(
            _label,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        controller: _controller,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/bg.jpeg",
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          SafeArea(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
              child: Container(
                height: min(MediaQuery.of(context).size.height * .8, 600),
                width: min(MediaQuery.of(context).size.width * .8, 500),
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade100.withOpacity(0.4),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Image.asset(
                            "assets/logo.png",
                            height: 80,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Swift",
                          style: TextStyle(
                            fontSize: 60,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          "Cafe",
                          style: TextStyle(
                            fontSize: 54,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withAlpha(125),
                                blurRadius: 20,
                                spreadRadius: 5,
                                offset: const Offset(0, 0),
                              )
                            ],
                          ),
                          child: const Text(
                            "Latte but never late",
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        myTextField(_userNameController, "Username"),
                        myTextField(_passwordController, "Password"),
                        const SizedBox(
                          height: 40,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.popAndPushNamed(
                                context, MyBottomNavigator.routeName);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 45,
                            width: 200,
                            decoration: BoxDecoration(
                              // ignore: prefer_const_literals_to_create_immutables
                              boxShadow: [
                                const BoxShadow(
                                    blurRadius: 15, offset: Offset(2, 2)),
                              ],
                              gradient: LinearGradient(
                                colors: [
                                  Colors.brown.shade800,
                                  Colors.brown.shade300,
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(30),
                              ),
                            ),
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 45,
                          width: 200,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          child: const Text(
                            "Signup",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Privacy Policy",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
