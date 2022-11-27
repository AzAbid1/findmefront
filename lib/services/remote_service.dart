import '../models/Region.dart';
import '../models/Ville.dart';
import '../models/Reclamation.dart';
import '../models/Categorie.dart';
import '../models/User.dart';
import '../models/Commentaire.dart';
import '../models/Message.dart';
import '../models/Publication.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  Future<List<Region>?> getRegions() async {
    var uri = Uri.parse('http://localhost:8000/api/regions');
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return regionFromJson(json);
    }
  }

  Future<List<Ville>?> getVilles() async {
    var uri = Uri.parse('http://localhost:8000/api/villes');
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return villeFromJson(json);
    }
  }

  Future<List<User>?> getUsers() async {
    var uri = Uri.parse('http://localhost:8000/api/users');
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return userFromJson(json);
    }
  }

  Future<List<Publication>?> getPublications() async {
    var uri = Uri.parse('http://localhost:8000/api/publications');
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return publicationFromJson(json);
    }
  }

  Future<List<Message>?> getMessages() async {
    var uri = Uri.parse('http://localhost:8000/api/messages');
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return messageFromJson(json);
    }
  }

  Future<List<Commentaire>?> getCommentaires() async {
    var uri = Uri.parse('http://localhost:8000/api/commentaires');
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return commentaireFromJson(json);
    }
  }

  Future<List<Categorie>?> getCategories() async {
    var uri = Uri.parse('http://localhost:8000/api/categories');
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return categorieFromJson(json);
    }
  }
}
