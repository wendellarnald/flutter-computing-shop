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
    title: "Screen Gaming",
    price: 250,
    size: 50,
    description:
        "Monitor Gaming AOC 24G2U/BK (24'' - 1 ms - 144 Hz - IPS - FreeSync)",
    image: "assets/images/Screen.png",
    color: Colors.deepPurple,
  ),
  Product(
    id: 2,
    title: "Desktop Gaming",
    price: 1100,
    size: 100,
    description:
        "Desktop Gaming LENOVO IdeaCentre G5 14IMB05 (Intel Core i7-10700 - NVIDIA GeForce GTX 1650 SUPER - RAM: 8 GB - 512 GB SSD PCIe)",
    image: "assets/images/desktop.png",
    color: Colors.deepOrange,
  ),
];
