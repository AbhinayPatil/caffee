import 'package:cafin/screens/details_screen.dart';
import 'package:flutter/material.dart';

class InstantItem extends StatelessWidget {
  const InstantItem({super.key});

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(DetailsScreen.routeName);
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.4),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          height: 150,
          width: _width * .9,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Latte",
                      style: TextStyle(
                        color: Colors.white.withOpacity(.8),
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text("4.9 ⭐ (458)"),
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
                    const SizedBox(
                      height: 5,
                    ),
                    const SizedBox(
                      width: 200,
                      child: Text(
                        "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
                        style: TextStyle(
                          color: Colors.white38,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                SizedBox(
                  height: 150,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        child: Image.asset(
                          "assets/coffeetwo.png",
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 30,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(5),
                            ),
                            color: Colors.green.shade600,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 2),
                            child: Text(
                              "Add",
                              style: TextStyle(color: Colors.white54),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
