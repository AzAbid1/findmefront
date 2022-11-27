// To parse this JSON data, do
//
//     final message = messageFromJson(jsonString);

import 'dart:convert';

List<Message> messageFromJson(String str) =>
    List<Message>.from(json.decode(str).map((x) => Message.fromJson(x)));

String messageToJson(List<Message> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Message {
  Message({
    required this.userId,
    required this.recieverId,
    required this.contenu,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  String userId;
  String recieverId;
  String contenu;
  DateTime updatedAt;
  DateTime createdAt;
  int id;

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        userId: json["user_id"],
        recieverId: json["reciever_id"],
        contenu: json["contenu"],
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "reciever_id": recieverId,
        "contenu": contenu,
        "updated_at": updatedAt.toIso8601String(),
        "created_at": createdAt.toIso8601String(),
        "id": id,
      };
}
