import 'package:flutter/material.dart';
import 'package:food_app/models/Pizza.dart';
import 'package:food_app/pages/detail_page/widgets/container_change_price.dart';
import 'package:food_app/pages/detail_page/widgets/container_image_price.dart';
import 'package:food_app/pages/detail_page/widgets/my_widget.dart';

class DetailPage extends StatelessWidget {
  final Pizza pizza;
  final int index;

  const DetailPage({Key key, this.pizza, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ValueNotifier myWidget = ValueNotifier(MyWidget(
      key: ValueKey(1),
      price: pizza.prices[0],
    ));

    return Scaffold(
      backgroundColor: Colors.white,
      body: ValueListenableBuilder(
        valueListenable: myWidget,
        builder: (context, value, child) {
          return Column(
            children: [
              Flexible(
                flex: 2,
                child: ContainerImagePrice(
                  image: pizza.image,
                  index: index,
                  myWidget: myWidget.value,
                ),
              ),
              Flexible(
                child: ContainerChangePrice(
                  title: pizza.title,
                  description: pizza.description,
                  myWidget: myWidget,
                  prices: pizza.prices,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
