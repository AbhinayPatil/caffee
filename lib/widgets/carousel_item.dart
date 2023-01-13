import 'package:flutter/material.dart';

class CarouselItemWidget extends StatelessWidget {
  final String img;
  final String title;
  final String subTitle;
  final double rating;
  final int reviewCount;

  const CarouselItemWidget(
      {required this.img,
      required this.title,
      required this.subTitle,
      required this.rating,
      required this.reviewCount});

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        padding: EdgeInsets.all(4),
        width: 180,
        height: 250,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.4),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 20),
              child: Image.asset(
                img,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              title,
              style:
                  TextStyle(color: Colors.white.withOpacity(.8), fontSize: 20),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 4.0, horizontal: 20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                          child: Text(
                        subTitle,
                        style: TextStyle(fontSize: 10),
                      )),
                      Text(
                        "$rating ⭐ ($reviewCount)",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.green.shade600,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
