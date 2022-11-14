import 'dart:convert';

List<Categorie> categorieFromJson(String str) => List<Categorie>.from(json.decode(str).map((x) => Categorie.fromJson(x)));

String categorieToJson(List<Categorie> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Categorie {
  Categorie({
 required   this.id,
 required   this.nomCategorie,
 required   this.createdAt,
 required   this.updatedAt,
  });

  int id;
  String nomCategorie;
  DateTime createdAt;
  DateTime updatedAt;

  factory Categorie.fromJson(Map<String, dynamic> json) => Categorie(
    id: json["id"],
    nomCategorie: json["nomCategorie"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "nomCategorie": nomCategorie,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}