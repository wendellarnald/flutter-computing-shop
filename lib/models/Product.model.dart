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
    title: "Screen Gaming AOC 24G2U",
    price: 399,
    size: 50,
    description:
        "Monitor Gaming AOC 24G2U/BK (24'' - 1 ms - 144 Hz - IPS - FreeSync)",
    image: "assets/images/Screen.png",
    color: Colors.grey,
  ),
  Product(
    id: 2,
    title: "Desktop Gaming LENOVO IdeaCentre",
    price: 1100,
    size: 100,
    description:
        "Desktop Gaming LENOVO IdeaCentre G5 14IMB05 (Intel Core i7-10700 - NVIDIA GeForce GTX 1650 SUPER - RAM: 8 GB - 512 GB SSD PCIe)",
    image: "assets/images/Desktop.png",
    color: Colors.grey,
  ),
  Product(
    id: 2,
    title: "Headphones Gaming HYPERX Cloud II",
    price: 235,
    size: 99,
    description:
        "Headphones Gaming HYPERX Cloud II (Wired - With Microphone - Red)",
    image: "assets/images/Headphones.png",
    color: Colors.grey,
  ),
  Product(
    id: 2,
    title: "Mouse Pad ASUS Rog Sheath",
    price: 19,
    size: 100,
    description: "Mouse Pad Gaming ASUS Rog Sheath XXL",
    image: "assets/images/MousePad.png",
    color: Colors.grey,
  ),
  Product(
    id: 2,
    title: "Keyboard Gaming MATRICS Stealth",
    price: 25,
    size: 40,
    description:
        "Keyboard Gaming MATRICS Stealth (Mechanical - Portuguese Language - RGB)",
    image: "assets/images/Keyboard.png",
    color: Colors.grey,
  ),
  Product(
    id: 2,
    title: "VR Headset Virtual KLACK®",
    price: 13,
    size: 20,
    description: "VR Headset Virtual KLACK® T00306 Apple Android",
    image: "assets/images/VR.png",
    color: Colors.grey,
  ),
  Product(
    id: 2,
    title: "Gaming Chair ALPHA GAMER Sírius",
    price: 164,
    size: 50,
    description:
        "Gaming Chair ALPHA GAMER Sírius (Up to 130 kg - Class 4 Lift - Red",
    image: "assets/images/Chair.png",
    color: Colors.grey,
  ),
  Product(
    id: 2,
    title: "Gaming Table NPLAY Command 2.0",
    price: 117,
    size: 120,
    description: "Mesa Gaming NPLAY Command 2.0",
    image: "assets/images/Table.png",
    color: Colors.grey,
  ),
];
