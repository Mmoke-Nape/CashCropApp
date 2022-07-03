import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../providers/product.dart';

class CartController extends GetxController {
  var _products = {}.obs;
  var item = 0.obs;

  void increase() {
    item.value++;
    Get.snackbar("Added To Cart", "Item has been added to cart",
        icon: const Icon(Icons.shopping_cart),
        barBlur: 20,
        isDismissible: true,
        duration: const Duration(seconds: 3));
  }

  void decrease() {
    item = item - 1;
  }

  Future addItemToCart(product) async {
    User user = FirebaseAuth.instance.currentUser!;

    final productsRef = FirebaseFirestore.instance
        .collection('Cart')
        .doc(user.uid.toString())
        .collection('CartItems')
        .doc(product.id);

    //Add product to the Cart table

    productsRef.set({
      'id': product.id,
      'imageUrl': product['imageUrl'],
      'title': product['title'],
      'description': product['description'],
      'category': product['category'],
      'price': product['price'],
      'measurement': product['measurement'],
      'location': product['location'],
    });

    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }
    _products.forEach((key, value) {
      print('pair');
      print(key);
      print(value);
      print('--------------------');
    });

    Get.snackbar(
      'Product Added',
      'You have added the ${product['title']} to the cart',
      snackPosition: SnackPosition.TOP,
      duration: const Duration(seconds: 2),
    );
  }

  void addProductToLocalList(product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }
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
