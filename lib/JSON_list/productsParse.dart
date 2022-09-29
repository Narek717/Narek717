// To parse this JSON data, do
//
//     final users = usersFromJson(jsonString);

import 'dart:convert';

List<Users> usersFromJson(String str) => List<Users>.from(json.decode(str).map((x) => Users.fromJson(x)));

String usersToJson(List<Users> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Users {
  Users({
    this.productName,
    this.imageUrl,
    this.price,
    this.isAvailable,
    required this.materials,
  });

  String? productName;
  String? imageUrl;
  int? price;
  bool? isAvailable;
  List<String> materials;

  factory Users.fromJson(Map<String, dynamic> json) => Users(
    productName: json["product_name"],
    imageUrl: json["imageUrl"],
    price: json["price"],
    isAvailable: json["is_available"],
    materials: List<String>.from(json["materials"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "product_name": productName,
    "imageUrl": imageUrl,
    "price": price,
    "is_available": isAvailable,
    "materials": List<dynamic>.from(materials.map((x) => x)),
  };
}
