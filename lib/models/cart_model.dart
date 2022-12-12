import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ['Avocado', '4.00', 'assets/images/avocado.png', Colors.green],
    ['Banana', '2.50', 'assets/images/banana.png', Colors.yellow],
    ['Chicken', '12.80', 'assets/images/chicken.png', Colors.brown],
    ['Water', '1.00', 'assets/images/water.png', Colors.blue],
  ];
  List _cartItems = [];

  get shopItems => _shopItems;
  get cartItems => _cartItems;

  void addCartItems(int index) {
    _cartItems.add(shopItems[index]);
    notifyListeners();
  }

  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotal() {
    double totalprice = 0;
    for (var cart in _cartItems) {
      totalprice += double.parse(cart[1]);
    }
    return totalprice.toStringAsFixed(2);
  }
}
