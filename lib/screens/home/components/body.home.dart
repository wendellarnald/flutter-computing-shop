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
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: defaultPadding,
                crossAxisSpacing: defaultPadding,
                childAspectRatio: 0.85,
              ),
              itemBuilder: (context, index) => ItemCard(),
            ),
          ),
        ),
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;

  const ItemCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(defaultPadding),
          decoration: BoxDecoration(
            color: products[0].color,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.asset(products[0].image),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding / 4),
          child: Text(
            products[0].title,
            style: TextStyle(
              color: textLightColor,
            ),
          ),
        ),
        Text(
          "\$234",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
