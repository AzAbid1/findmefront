import '../models/Categorie.dart';
import '../models/Commentaire.dart';
import '../models/Publication.dart';
import 'package:http/http.dart' as http;

import '../models/Region.dart';
import '../models/User.dart';
import '../models/Ville.dart';
import '../models/Vote.dart';

class RemoteService {
  Future<List<Publication>?> getPublications() async {
    var client = http.Client();
    var uri = Uri.parse('http://localhost:8000/api/publications');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return publicationFromJson(json);
    }
  }

  Future<List<Ville>?> getVilles() async {
    var client = http.Client();
    var uri = Uri.parse('http://localhost:8000/api/villes');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return villeFromJson(json);
    }
  }

  Future<List<Region>?> getRegions() async {
    var client = http.Client();
    var uri = Uri.parse('http://localhost:8000/api/regions');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return regionFromJson(json);
    }
  }

  Future<List<User>?> getUsers() async {
    var client = http.Client();
    var uri = Uri.parse('http://localhost:8000/api/users');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return userFromJson(json);
    }
  }

  Future<List<Commentaire>?> getCommentaires() async {
    var client = http.Client();
    var uri = Uri.parse('http://localhost:8000/api/commentaires');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return commentaireFromJson(json);
    }
  }

  Future<List<Vote>?> getVotes() async {
    var client = http.Client();
    var uri = Uri.parse('http://localhost:8000/api/users');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return voteFromJson(json);
    }
  }

  Future<List<Categorie>?> getCategories() async {
    var client = http.Client();
    var uri = Uri.parse('http://localhost:8000/api/categories');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return categorieFromJson(json);
    }
  }
}
