import 'package:flutter/material.dart';
import 'package:food_app/pages/home_page/widgets/categories.dart';
import 'package:food_app/pages/home_page/widgets/search_box.dart';

import 'address_information.dart';
import 'items_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SearchBox(),
          Categories(),
          ItemsCard(),
          AddressInformation(),
        ],
      ),
    );
  }
}
