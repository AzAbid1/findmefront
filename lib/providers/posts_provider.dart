import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:findmefront/providers/post_provider.dart';

class Posts with ChangeNotifier {
  List<Post> _items = [];

  List<Post> get items {
    return [...items];
  }

  Future<void> fetchAndSetPosts() async {
    const url = 'http://localhost:8000/api/publications';
    try {
      final response = await http.get(url as Uri);
      final extractedData = json.decode(response.body);
      final List<Post> loadedPosts = [];
      extractedData.forEach((postData) {
        loadedPosts.add(Post(
        id: postData['id'],
        titre: postData['titre'],
        description: postData['description'],
        image: postData['image'],
        nbVue: postData['nbVue'],
        nbVote: postData['nbVote'],
        villeId: postData['villeId'],
        userId: postData['userId']
        ));
      });
      _items = loadedPosts;
      notifyListeners();
    } catch (error) {
      throw (error);
    }
  }
}
