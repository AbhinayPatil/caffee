import 'dart:math';
import 'dart:ui';

import 'package:cafin/widgets/instant_item.dart';
import 'package:cafin/widgets/popular_beverages.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/home-screen";

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: _height,
      width: _width,
      child: Stack(
        children: [
          Image.asset(
            "assets/bg.jpeg",
            height: _height,
            width: _width,
            fit: BoxFit.cover,
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 10),
            child: Container(
              height: _height,
              width: _width,
              color: Colors.white.withOpacity(0.1),
              child: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 35),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/hand.png",
                              height: 27,
                              fit: BoxFit.fitWidth,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  DateFormat.yMd().format(DateTime.now()),
                                  style: const TextStyle(
                                    color: Colors.white38,
                                    fontSize: 13,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "Joshua Scanlan",
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Container(
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(7),
                                  ),
                                  color: Colors.white60),
                              child: const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Icon(Icons.shopping_bag_outlined),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset("assets/profilepic.png"),
                          ],
                        ),
                      ),
                      Center(
                        child: Container(
                          width: min(_width * .9, 400),
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(5),
                            ),
                            color: Colors.white70.withOpacity(.8),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.search_outlined,
                                  color: Colors.black.withOpacity(.2),
                                ),
                              ),
                              SizedBox(
                                width: 150,
                                child: TextField(
                                  decoration: InputDecoration(
                                    label: Text(
                                      "Search favourite beverages",
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(.2),
                                        fontSize: 12,
                                      ),
                                    ),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.filter_list_sharp,
                                  color: Colors.black.withOpacity(.2),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      PopularBeverages(),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 12),
                        child: Text(
                          "Get it instantly",
                          style: TextStyle(
                            color: Colors.white38,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: _height * .3,
                        child: ListView(
                          children: [
                            const InstantItem(),
                            const InstantItem(),
                            const InstantItem(),
                          ],
                        ),
                      ),
                    ],
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
