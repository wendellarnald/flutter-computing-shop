import 'package:computing_shop/models/Product.model.dart';
import 'package:computing_shop/screens/details/components/body.details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';

class DetailsPage extends StatelessWidget {
  final Product product;

  const DetailsPage({
    Key key,
    this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0.5,
      leading: IconButton(
        icon: SvgPicture.asset(
          "asset/icons/back.svg",
          color: Colors.black,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: textColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            color: textColor,
          ),
          onPressed: () {},
        ),
        SizedBox(width: defaultPadding / 2),
      ],
    );
  }
}
