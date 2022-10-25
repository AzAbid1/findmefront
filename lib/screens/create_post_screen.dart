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
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close, color: Theme.of(context).colorScheme.primary),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Create Post'),
        actions: [
          ElevatedButton(onPressed: null, child: Text('POST'))
        ],
      ),
      body: Text('Form here'),
    );
  }
}
