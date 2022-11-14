
import 'dart:convert';

List<Region> regionFromJson(String str) => List<Region>.from(json.decode(str).map((x) => Region.fromJson(x)));

String regionToJson(List<Region> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Region {
  Region({
  required this.id,
  required this.nomRegion,
  required this.createdAt,
  required this.updatedAt,
  });

  int id;
  String nomRegion;
  DateTime createdAt;
  DateTime updatedAt;

  factory Region.fromJson(Map<String, dynamic> json) => Region(
    id: json["id"],
    nomRegion: json["nomRegion"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
  "id": id,
  "nomRegion": nomRegion,
  "created_at": createdAt.toIso8601String(),
  "updated_at": updatedAt.toIso8601String(),
    };
}