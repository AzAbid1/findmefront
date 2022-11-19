// To parse this JSON data, do
//
//     final publication = publicationFromJson(jsonString);

import 'dart:convert';

List<Publication> publicationFromJson(String str) => List<Publication>.from(
    json.decode(str).map((x) => Publication.fromJson(x)));

String publicationToJson(List<Publication> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Publication {
  Publication({
    required this.id,
    required this.titre,
    required this.description,
    required this.image,
    required this.nbVue,
    required this.categorieId,
    required this.villeId,
    required this.userId,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String titre;
  String description;
  String image;
  int nbVue;
  int categorieId;
  int villeId;
  int userId;
  DateTime createdAt;
  DateTime updatedAt;

  factory Publication.fromJson(Map<String, dynamic> json) => Publication(
        id: json["id"],
        titre: json["titre"],
        description: json["description"],
        image: json["image"],
        nbVue: json["nbVue"],
        categorieId: json["categorie_id"],
        villeId: json["ville_id"],
        userId: json["user_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "titre": titre,
        "description": description,
        "image": image,
        "nbVue": nbVue,
        "categorie_id": categorieId,
        "ville_id": villeId,
        "user_id": userId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
