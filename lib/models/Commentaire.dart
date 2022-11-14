import 'dart:convert';

List<Commentaire> commentaireFromJson(String str) => List<Commentaire>.from(json.decode(str).map((x) => Commentaire.fromJson(x)));

String commentaireToJson(List<Commentaire> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Commentaire {
  Commentaire({
 required  this.id,
 required  this.contenu,
 required  this.createdAt,
 required  this.updatedAt,
 required  this.publicationId,
  });

  int id;
  String contenu;
  DateTime createdAt;
  DateTime updatedAt;
  int publicationId;

  factory Commentaire.fromJson(Map<String, dynamic> json) => Commentaire(
    id: json["id"],
    contenu: json["contenu"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    publicationId: json["publication_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "contenu": contenu,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "publication_id": publicationId,
  };
}