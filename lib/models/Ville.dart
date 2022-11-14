import 'dart:convert';

List<Ville> villeFromJson(String str) => List<Ville>.from(json.decode(str).map((x) => Ville.fromJson(x)));

String villeToJson(List<Ville> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Ville {
  Ville({
  required this.id,
  required this.nomVille,
  required this.createdAt,
  required this.updatedAt,
  required this.regionId,
  });

  int id;
  String nomVille;
  DateTime createdAt;
  DateTime updatedAt;
  int regionId;

  factory Ville.fromJson(Map<String, dynamic> json) => Ville(
    id: json["id"],
    nomVille: json["nomVille"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    regionId: json["region_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "nomVille": nomVille,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "region_id": regionId,
  };
}