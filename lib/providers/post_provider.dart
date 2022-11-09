import 'package:flutter/material.dart';

class Post with ChangeNotifier {
  final int id;
  String titre;
  String description;
  String image;
  int nbVue;
  int nbVote;
  int villeId;
  int userId;

  Post({
    required this.id,
    required this.titre,
    required this.description,
    required this.image,
    required this.nbVue,
    required this.nbVote,
    required this.villeId,
    required this.userId
  });
}