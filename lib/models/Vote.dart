// To parse this JSON data, do
//
//     final vote = voteFromJson(jsonString);

import 'dart:convert';

List<Vote> voteFromJson(String str) =>
    List<Vote>.from(json.decode(str).map((x) => Vote.fromJson(x)));

String voteToJson(List<Vote> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Vote {
  Vote({
    required this.id,
    required this.publicationId,
    required this.userId,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  int publicationId;
  int userId;
  DateTime createdAt;
  DateTime updatedAt;

  factory Vote.fromJson(Map<String, dynamic> json) => Vote(
        id: json["id"],
        publicationId: json["publication_id"],
        userId: json["user_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "publication_id": publicationId,
        "user_id": userId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
