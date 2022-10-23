import 'package:flutter/material.dart';

import 'package:findmefront/widgets/post_item.dart';

class FeedScreen extends StatefulWidget {
  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  var posts = [
    {
      'title': 'Title',
      'pf_img': 'assets/images/logo.png',
      'post_img': 'assets/images/profile_default.jpg'
    }
  ];

  List<String> images = [
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 4.58,
          crossAxisSpacing: 10,
          mainAxisSpacing: 5,
          /*crossAxisCount 2,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 4.0*/
        ),
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return PostItem();
        });
  }
}
