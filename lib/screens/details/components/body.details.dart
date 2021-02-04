import 'package:computing_shop/constants.dart';
import 'package:computing_shop/models/Product.model.dart';
import 'package:computing_shop/screens/details/components/colorSize.details.dart';
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
                      Description(product: product),
                      CartCounter(),
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

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numberOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutLineButton(
          icon: Icons.remove,
          press: () {
            if (numberOfItems > 1) {
              setState(
                () {
                  numberOfItems--;
                },
              );
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
          child: Text(
            numberOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutLineButton(
          icon: Icons.add,
          press: () {
            setState(() {
              numberOfItems++;
            });
          },
        ),
      ],
    );
  }

  SizedBox buildOutLineButton({IconData icon, Function press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
