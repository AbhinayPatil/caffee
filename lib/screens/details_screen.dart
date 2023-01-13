import 'package:blur/blur.dart';
import 'package:cafin/widgets/filling_size_container.dart';
import 'package:cafin/widgets/quantity_dropdown.dart';
import 'package:cafin/widgets/sugar_choice.dart';
import 'package:flutter/material.dart';

import '../widgets/last_container.dart';
import '../widgets/milk_choice.dart';

class DetailsScreen extends StatelessWidget {
  static const routeName = "/details-screen";

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/coffeethree.jpeg",
            height: 320,
            width: _width,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Container(
              height: _height,
              width: _width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                    child: Blur(
                      blur: 5,
                      child: Image.asset(
                        "assets/bg.jpeg",
                        height: _height,
                        width: _width,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black12.withOpacity(.3),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 20),
                      //content column
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //top part
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Latte",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "4.9 ⭐ (458)",
                                          style: TextStyle(
                                            color: Colors.white70,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          color: Colors.white,
                                          child: Image.asset(
                                            "assets/veg.png",
                                            height: 12,
                                            width: 12,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                //dropdown
                                const QuantityDropdown(),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            //top part ends
                            const Text(
                              "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
                              style: TextStyle(
                                color: Colors.white70,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            //CHOICE OF FIILING
                            const Text(
                              "Choice of cup filling",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const FillingSizeContainer(),
                            const SizedBox(
                              height: 20,
                            ),
                            //CHOICE OF MIL
                            const Text(
                              "Choice of milk",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const MilkChoice(),
                            const SizedBox(
                              height: 20,
                            ),
                            //CHOICE OF SUGAR
                            const Text(
                              "Choice of sugar",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const SugarChoice(),
                            const SizedBox(
                              height: 20,
                            ),
                            const LastContainer(),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
