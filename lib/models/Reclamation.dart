// To parse this JSON data, do
//
//     final reclamation = reclamationFromJson(jsonString);

import 'dart:convert';

List<Reclamation> reclamationFromJson(String str) => List<Reclamation>.from(
    json.decode(str).map((x) => Reclamation.fromJson(x)));

String reclamationToJson(List<Reclamation> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Reclamation {
  Reclamation({
    required this.userId,
    required this.publicationId,
    required this.message,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  String userId;
  String publicationId;
  String message;
  DateTime updatedAt;
  DateTime createdAt;
  int id;

  factory Reclamation.fromJson(Map<String, dynamic> json) => Reclamation(
        userId: json["user_id"],
        publicationId: json["publication_id"],
        message: json["message"],
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "publication_id": publicationId,
        "message": message,
        "updated_at": updatedAt.toIso8601String(),
        "created_at": createdAt.toIso8601String(),
        "id": id,
      };
}
