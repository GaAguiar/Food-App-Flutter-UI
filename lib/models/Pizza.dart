import 'package:flutter/material.dart';

class Pizza {
  final Image image;
  final String title, description;
  final List<String> prices;

  Pizza({this.image, this.title, this.description, this.prices});
}

List<Pizza> listPizza = [
  Pizza(
    image: Image.asset('assets/img/img0.png', height: 200),
    title: 'Caesar',
    description: 'Mixed Pizza with cheese',
    prices: ['\$7.9', '\$8.9', '\$10.9'],
  ),
  Pizza(
    image: Image.asset('assets/img/img1.png', height: 200),
    title: 'Mexico',
    description: 'Hot pizza with pepper',
    prices: ['\$7.9', '\$8.9', '\$10.9'],
  ),
  Pizza(
    image: Image.asset('assets/img/img2.png', height: 200),
    title: 'Margherita',
    description: 'Hot pizza with pepper',
    prices: ['\$7.9', '\$8.9', '\$10.9'],
  ),
];
