import 'package:computing_shop/models/Product.model.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProductTitleWIthImage extends StatelessWidget {
  const ProductTitleWIthImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            product.categorie,
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),
          Text(
            product.title,
            style: Theme.of(context).textTheme.headline6.copyWith(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(height: defaultPadding),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Price\n",
                        style: TextStyle(
                          color: textColor,
                        )),
                    TextSpan(
                      text: "\$${product.price}",
                      style: Theme.of(context).textTheme.headline4.copyWith(
                            color: textColor,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: defaultPadding),
              Expanded(
                child: Hero(
                  tag: "${product.id}",
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
