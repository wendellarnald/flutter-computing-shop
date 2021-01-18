import 'package:computing_shop/constants.dart';
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
      ],
    );
  }
}
