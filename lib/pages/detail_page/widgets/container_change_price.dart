import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/const.dart';
import 'package:food_app/pages/detail_page/widgets/my_widget.dart';

class ContainerChangePrice extends StatefulWidget {
  final String title, description;
  final ValueNotifier myWidget;
  final List<String> prices;

  const ContainerChangePrice(
      {Key key, this.title, this.description, this.prices, this.myWidget})
      : super(key: key);
  @override
  _ContainerChangePriceState createState() => _ContainerChangePriceState();
}

class _ContainerChangePriceState extends State<ContainerChangePrice> {
  int itemSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.title,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
        ),
        SizedBox(height: 10),
        Text(
          widget.description,
          style: TextStyle(fontSize: 25),
        ),
        SizedBox(height: 10),
        Container(
          height: 90,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    itemSelected = index;
                    widget.myWidget.value = (index == 0)
                        ? MyWidget(
                            price: widget.prices[0],
                            key: ValueKey(1),
                          )
                        : (index == 1)
                            ? MyWidget(
                                price: widget.prices[1],
                                key: ValueKey(2),
                              )
                            : MyWidget(
                                price: widget.prices[2],
                                key: ValueKey(3),
                              );
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  alignment: Alignment.center,
                  child: (index == 0)
                      ? Text('S', style: TextStyle(fontSize: 25))
                      : (index == 1)
                          ? Text('M', style: TextStyle(fontSize: 25))
                          : Text('L', style: TextStyle(fontSize: 25)),
                  margin: EdgeInsets.all(15),
                  width: 90,
                  decoration: (itemSelected == index)
                      ? BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(30))
                      : BoxDecoration(
                          color: defaultContainer,
                          borderRadius: BorderRadius.circular(30),
                        ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 10),
        FlatButton(
          onPressed: () {},
          color: Colors.black,
          splashColor: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 15,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          child: Container(
            height: 50,
            padding: EdgeInsets.all(10),
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: primaryColor,
            ),
            child: SvgPicture.asset(
              'assets/icons/bag.svg',
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}
