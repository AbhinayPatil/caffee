import 'dart:math';

import 'package:cafin/widgets/carousel_item.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../models/carousel_item_model.dart';

class PopularBeverages extends StatelessWidget {
  final List<CarouselItem> itemList = [
    CarouselItem(
        img: "assets/coffee.png",
        description:
            "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
        title: "Hot Cappuccino",
        subTiltle: "Espresso, Steamed Milk",
        rating: 4.9,
        reviewCount: 495),
    CarouselItem(
        img: "assets/coffee.png",
        description:
            "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
        title: "Hot Cappuccino",
        subTiltle: "Espresso, Steamed Milk",
        rating: 4.9,
        reviewCount: 495),
    CarouselItem(
        img: "assets/coffee.png",
        description:
            "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
        title: "Hot Cappuccino",
        subTiltle: "Espresso, Steamed Milk",
        rating: 4.9,
        reviewCount: 495),
    CarouselItem(
        img: "assets/coffee.png",
        description:
            "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
        title: "Hot Cappuccino",
        subTiltle: "Espresso, Steamed Milk",
        rating: 4.9,
        reviewCount: 495),
    CarouselItem(
        img: "assets/coffee.png",
        description:
            "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
        title: "Hot Cappuccino",
        subTiltle: "Espresso, Steamed Milk",
        rating: 4.9,
        reviewCount: 495),
    CarouselItem(
        img: "assets/coffee.png",
        description:
            "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
        title: "Hot Cappuccino",
        subTiltle: "Espresso, Steamed Milk",
        rating: 4.9,
        reviewCount: 495),
    CarouselItem(
        img: "assets/coffee.png",
        description:
            "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
        title: "Hot Cappuccino",
        subTiltle: "Espresso, Steamed Milk",
        rating: 4.9,
        reviewCount: 495),
    CarouselItem(
        img: "assets/coffee.png",
        description:
            "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
        title: "Hot Cappuccino",
        subTiltle: "Espresso, Steamed Milk",
        rating: 4.9,
        reviewCount: 495),
    CarouselItem(
        img: "assets/coffee.png",
        description:
            "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
        title: "Hot Cappuccino",
        subTiltle: "Espresso, Steamed Milk",
        rating: 4.9,
        reviewCount: 495),
    CarouselItem(
        img: "assets/coffee.png",
        description:
            "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
        title: "Hot Cappuccino",
        subTiltle: "Espresso, Steamed Milk",
        rating: 4.9,
        reviewCount: 495),
  ];

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Container(
      width: _width,
      height: 300,
      color: Colors.black54.withOpacity(.4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
            child: Text(
              "Most Popular Beverages",
              style: TextStyle(
                color: Colors.white54,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            height: 250,
            width: _width,
            child: CarouselSlider(
              items: itemList
                  .map((e) => CarouselItemWidget(
                      img: e.img,
                      title: e.title,
                      subTitle: e.subTiltle,
                      rating: e.rating,
                      reviewCount: e.reviewCount))
                  .toList(),
              options: CarouselOptions(
                  autoPlay: true,
                  //aspectRatio: 1.6,
                  enlargeCenterPage: false,
                  viewportFraction: MediaQuery.of(context).size.width * .0013),
            ),
          ),
        ],
      ),
    );
  }
}
