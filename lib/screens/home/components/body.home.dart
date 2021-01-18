import 'package:computing_shop/constants.dart';
import 'package:computing_shop/models/Product.model.dart';
import 'package:computing_shop/screens/home/components/categories.home.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding,
          ),
        ),
        Categories(),
        Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(defaultPadding),
              height: 160,
              width: 140,
              decoration: BoxDecoration(
                color: products[0].color,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(products[0].image),
            ),
          ],
        ),
      ],
    );
  }
}
