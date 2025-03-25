import 'package:flutter/material.dart';
import 'package:provider_kullanimi/models/product.dart';

class Consts {
  static List<Product> products = [
    Product(id: 1, name: "PS4", price: 2000, color: Colors.green),
    Product(id: 1, name: "PS5", price: 5000, color: Colors.yellow),
    Product(id: 1, name: "Iphone X", price: 1000, color: Colors.blue),
    Product(id: 1, name: "Macbook Pro", price: 5000, color: Colors.pink),
  ];
}
