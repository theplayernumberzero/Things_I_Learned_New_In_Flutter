import 'package:flutter/material.dart';
import 'package:provider_kullanimi/models/product.dart';

class CartProvider extends ChangeNotifier {
  final List<Product> _items = [];

  List<Product> get items => _items;

  void addItem(Product item) {
    _items.add(item);
    notifyListeners();
  }

  void removeItem(Product item) {
    _items.remove(item);
    notifyListeners();
  }

  void removeAllItem() {
    _items.clear();
    notifyListeners();
  }

  double getCartTotal() {
    return _items.fold(0, (previousValue, item) => previousValue + item.price);
  }
}
