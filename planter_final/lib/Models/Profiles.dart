// To parse this JSON data, do
//
//     final profiles = profilesFromJson(jsonString);

import 'dart:convert';

Profiles profilesFromJson(String str) => Profiles.fromJson(json.decode(str));

String profilesToJson(Profiles data) => json.encode(data.toJson());

class Profiles {
  Profiles({
    required this.people,
  });

  List<Person> people;

  factory Profiles.fromJson(Map<String, dynamic> json) => Profiles(
    people: List<Person>.from(json["people"].map((x) => Person.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "people": List<dynamic>.from(people.map((x) => x.toJson())),
  };
}

class Person {
  Person({
    this.id,
    this.userId,
    this.firstName,
    this.lastName,
    this.address,
    this.locationLat,
    this.locationLng,
    this.phoneNum,
    this.isActive,
    this.createdAt,
    this.updatedAt,
    this.isPrivate,
    this.points,
    this.accountLvl,
    this.cusProfileImg,
    this.items,
    this.media,
  });

  int ?id;
  int ?userId;
  String ?firstName;
  String ?lastName;
  dynamic ?address;
  double ?locationLat;
  double ?locationLng;
  dynamic ?phoneNum;
  int ?isActive;
  DateTime ?createdAt;
  DateTime ?updatedAt;
  int ?isPrivate;
  dynamic ?points;
  dynamic ?accountLvl;
  String ?cusProfileImg;
  List<Item> ?items;
  List<dynamic> ?media;

  factory Person.fromJson(Map<String, dynamic> json) => Person(
    id: json["id"],
    userId: json["user_id"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    address: json["address"],
    locationLat: json["location_lat"].toDouble(),
    locationLng: json["location_lng"].toDouble(),
    phoneNum: json["phone_num"],
    isActive: json["is_active"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    isPrivate: json["is_private"],
    points: json["points"],
    accountLvl: json["account_lvl"],
    cusProfileImg: json["cus_profile_img"],
    items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
    media: List<dynamic>.from(json["media"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "first_name": firstName,
    "last_name": lastName,
    "address": address,
    "location_lat": locationLat,
    "location_lng": locationLng,
    "phone_num": phoneNum,
    "is_active": isActive,
    "created_at": createdAt!.toIso8601String(),
    "updated_at": updatedAt!.toIso8601String(),
    "is_private": isPrivate,
    "points": points,
    "account_lvl": accountLvl,
    "cus_profile_img": cusProfileImg,
    "items": List<dynamic>.from(items!.map((x) => x.toJson())),
    "media": List<dynamic>.from(media!.map((x) => x)),
  };
}

class Item {
  Item({
    this.itemTitle,
    this.itemSellerId,
    this.isActive,
    this.createdAt,
    this.itemImages,
    this.media,
  });

  String ?itemTitle;
  int ?itemSellerId;
  int ?isActive;
  DateTime ?createdAt;
  String ?itemImages;
  List<dynamic> ?media;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    itemTitle: json["item_title"],
    itemSellerId: json["item_seller_id"],
    isActive: json["is_active"],
    createdAt: DateTime.parse(json["created_at"]),
    itemImages: json["item_images"],
    media: List<dynamic>.from(json["media"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "item_title": itemTitle,
    "item_seller_id": itemSellerId,
    "is_active": isActive,
    "created_at": createdAt!.toIso8601String(),
    "item_images": itemImages,
    "media": List<dynamic>.from(media!.map((x) => x)),
  };
}
