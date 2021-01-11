import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product({
    this.image,
    this.title,
    this.description,
    this.price,
    this.size,
    this.id,
    this.color,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Mouse",
    price: 80,
    size: 5,
    description: "",
    image: "",
    color: Colors.deepPurple,
  ),
  Product(
    id: 2,
    title: "Keyboard",
    price: 110,
    size: 10,
    description: "",
    image: "",
    color: Colors.deepOrange,
  ),
];
