import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class Cart with ChangeNotifier {
  String id;
  final String title;
  final String description;
  final String category;
  final int price;
  final String imageUrl;
  final double totalPrice;
  bool isFavorite;
  final String measurement;
  final int quantity;

  Cart({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.imageUrl,
    required this.totalPrice,
    required this.measurement,
    required this.quantity,
    this.isFavorite = false,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['description'] = description;
    data['category'] = category;
    data['price'] = price;
    data['imageUrl'] = imageUrl;
    data['measurement'] = measurement;
    data['totalPrice'] = totalPrice;

    return data;
  }

  static Cart fromJson(Map<String, dynamic> json) => Cart(
        id: json['id'],
        title: json['title'],
        description: json['description'],
        category: json['category'],
        price: json['price'],
        imageUrl: json['imageUrl'],
        totalPrice: double.parse(json['totalPrice']),
        measurement: json['measurement'],
        quantity: json['quantity'] as int,
      );
}

//void _setFavValue(bool newValue) {
  //   isFavorite = newValue;
  //   notifyListeners();
  // }
  // Future<void> toggleFavoriteStatus(String token, String userId) async {
  //   final oldStatus = isFavorite;
  //   isFavorite = !isFavorite;
  //   notifyListeners();
  //   final url =
  //       'https://flutter-shop-3006a.firebaseio.com/userFavorites/$userId/$id.json?auth=$token';
  //   try {
  //     final response = await http.put(
  //       url,
  //       body: json.encode(
  //         isFavorite,
  //       ),
  //     );
  //     if (response.statusCode >= 400) {
  //       _setFavValue(oldStatus);
  //     }
  //   } catch (error) {
  //     _setFavValue(oldStatus);
  //   }
  // }

