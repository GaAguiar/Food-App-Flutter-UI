import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final String price;

  const MyWidget({Key key, this.price}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      price,
      style: TextStyle(fontSize: 25),
    );
  }
}
