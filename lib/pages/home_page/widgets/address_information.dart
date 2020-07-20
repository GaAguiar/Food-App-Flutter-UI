import 'package:flutter/material.dart';
import 'package:food_app/const.dart';

class AddressInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Your Delivery Address'),
                SizedBox(height: 5),
                Text(
                  '241 Hillside Road, HASTINGS',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
          FlatButton(
            color: primaryColor,
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            child: Icon(Icons.edit),
          )
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          color: defaultContainer, borderRadius: BorderRadius.circular(20)),
    );
  }
}
