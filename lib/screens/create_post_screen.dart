import 'package:flutter/material.dart';

class CreatePost extends StatefulWidget {
  static const routeName = '/create-post';
  const CreatePost({Key? key}) : super(key: key);

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create Post'),),
      body: Text('Form here'),
    );
  }
}
