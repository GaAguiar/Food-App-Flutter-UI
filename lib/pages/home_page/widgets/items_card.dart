import 'package:flutter/material.dart';
import 'package:food_app/const.dart';
import 'package:food_app/models/Pizza.dart';

import 'dart:math';

class ItemsCard extends StatefulWidget {
  @override
  _ItemsCardState createState() => _ItemsCardState();
}

class _ItemsCardState extends State<ItemsCard> {
  PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
      viewportFraction: 0.8,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      child: PageView.builder(
        controller: _pageController,
        itemCount: listPizza.length,
        itemBuilder: (context, index) => buildCardItem(index),
      ),
    );
  }

  Widget buildCardItem(int index) {
    return GestureDetector(
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 0.5 / 0.55,
            child: Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(bottom: 0, left: 20, right: 20, top: 50),
              decoration: BoxDecoration(
                color: defaultContainer,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    listPizza[index].title,
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(height: 5),
                  Text(listPizza[index].description),
                  SizedBox(height: 15),
                  Text(
                    listPizza[index].prices[0],
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          AnimatedBuilder(
            animation: _pageController,
            builder: (context, child) {
              double value = 0;
              if (_pageController.position.haveDimensions) {
                value = index - _pageController.page;
                value = (value * 0.5).clamp(-1, 1);
              }
              return Transform.rotate(
                angle: -pi * value,
                child: Hero(
                  tag: '$index',
                  child: listPizza[index].image,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
