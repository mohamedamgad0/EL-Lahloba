import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Medical glasses",
    price: 40,
    size: 30,
    description: dummyText,
    color: Color(0xFF3D82AE),
    image: "photo/store4.png",
  ),
  Product(
    id: 2,
    title: "Hearing Aid",
    price: 100,
    size: 7,
    description: dummyText,
    color: Color(0xFFD3A984),
    image:
        "photo/store5.png",
  ),
  Product(
    id: 3,
    title: "Wheelchair standard",
    price: 1000,
    size: 11,
    description: dummyText,
    color: const Color(0xFF989493),
    image: "photo/store8.png",
  ),
  Product(
    id: 4,
    title: "Folding walker",
    price: 500,
    size: 50,
    description: dummyText,
    color: const Color(0xFFE6B398),
    image:
        "photo/store16.png",
  ),
  Product(
    id: 5,
    title: "Medical crutch",
    price: 30,
    size: 12,
    description: dummyText,
    color: const Color(0xFFFB7883),
    image:
        "photo/store9.png",
  ),
  Product(
    id: 6,
    title: "In the canal hearing aid",
    price: 234,
    size: 2,
    description: dummyText,
    image:
        "photo/store10.png",
    color: const Color(0xFFAEAEAE),
  ),
  Product(
    id: 7,
    title: "Aluminum medical ",
    price: 500,
    size: 11,
    description: dummyText,
    image:
        "photo/store11.png",
    color: const Color(0xFF3D82AE)),

  Product(
    id: 8,
    title: "Multiple sizes hearing aid",
    price: 50,
    size: 14,
    description: dummyText,
    image:
        "photo/store12.png",
    color: const Color(0xFFE6B398),
  ),
  Product(
    id: 9,
    title: "Leather wheelchair",
    price: 150,
    size: 7,
    description: dummyText,
    image:
        "photo/store15.png",
    color: const  Color(0xFFD3A984),
  ),
  Product(
    id: 10,
    title: "Forearm medical crutches ",
    price: 200,
    size: 10,
    description: dummyText,
    image:
        "photo/store17.png",
    color: const Color(0xFFFB7883),
  ),
];

String dummyText =
    "We welcome you to our shop, and we hope that you will find the best products. The address of the shop is Cairo, Maadi, next to Sadat Academy.";
