import 'package:computing_shop/constants.dart';
import 'package:computing_shop/models/Product.model.dart';
import 'package:computing_shop/screens/details/components/addToCart.details.dart';
import 'package:computing_shop/screens/details/components/colorSize.details.dart';
import 'package:computing_shop/screens/details/components/counterWithFav.details.dart';
import 'package:computing_shop/screens/details/components/description.details.dart';
import 'package:computing_shop/screens/details/components/product.details.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({
    Key key,
    this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: defaultPadding,
                    right: defaultPadding,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      SizedBox(height: defaultPadding / 2),
                      Description(product: product),
                      SizedBox(height: defaultPadding / 2),
                      CounterWithFavBtn(),
                      SizedBox(height: defaultPadding / 2),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWIthImage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
