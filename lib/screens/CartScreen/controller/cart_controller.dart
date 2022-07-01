import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../providers/product.dart';

class CartController extends GetxController {
  var _products = {}.obs;

  void addProduct(product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }

    Get.snackbar(
      'Product Added',
      'You have added the ${product['title']} to the cart',
      snackPosition: SnackPosition.TOP,
      duration: const Duration(seconds: 2),
    );
  }

  get products => _products;

  void removeProduct(product) {
    if (_products.containsKey(product) && _products[product] == 1) {
      _products.removeWhere((key, value) => key == product);
    } else {
      _products[product] -= 1;
    }
  }

  get productSubTotal => _products.entries
      .map((product) => product.key['price'] * product.value)
      .toList();

  get total => _products.entries
      .map((product) => product.key['price'] * product.value)
      .toList()
      .reduce((value, element) => value + element)
      .toStringAsFixed(2);
}