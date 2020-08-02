import 'package:flutter/material.dart';
import 'package:food_app/const.dart';

class ContainerImagePrice extends StatefulWidget {
  final Image image;
  final int index;
  final Widget myWidget;

  const ContainerImagePrice({Key key, this.image, this.index, this.myWidget})
      : super(key: key);
  @override
  _ContainerImagePriceState createState() => _ContainerImagePriceState();
}

class _ContainerImagePriceState extends State<ContainerImagePrice> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Stack(
        children: [
          AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Positioned(
            right: -80,
            top: 80,
            child: Container(
              child: Hero(
                tag: '${widget.index}',
                child: widget.image,
              ),
              height: 370,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2,
                  color: Colors.black.withOpacity(0.2),
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 190,
            child: Container(
              height: 120,
              child: Center(
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 250),
                  transitionBuilder: (child, animation) => ScaleTransition(
                    scale: animation,
                    child: child,
                  ),
                  child: widget.myWidget,
                ),
              ),
              width: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
