import 'package:findmefront/providers/post_provider.dart';
import 'package:flutter/material.dart';

class Posts with ChangeNotifier {
  List<Post> _items = [];
  List<Post> get items {
    return [...items];
  }
}