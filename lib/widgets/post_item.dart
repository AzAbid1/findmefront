import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  const PostItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 4,
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: null,
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/profile_default.jpg'),
                ),
              ),
              IconButton(
                onPressed: null,
                icon: Icon(Icons.favorite),
              )
            ],
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.network(
              'https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png',
              width: double.infinity,
              fit: BoxFit.contain,
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('title'),
            PopupMenuButton(
              icon: Icon(Icons.more_horiz,
                  color: Theme.of(context).colorScheme.primary),
              onSelected: (value) {
                // your logic
              },
              itemBuilder: (BuildContext context) {
                return const [
                  PopupMenuItem(
                      child: IconButton(
                    onPressed: null,
                    icon: Icon(Icons.share),
                  )),
                  PopupMenuItem(
                      child: IconButton(
                    onPressed: null,
                    icon: Icon(Icons.fullscreen),
                  )),
                  PopupMenuItem(
                      child: IconButton(
                    onPressed: null,
                    icon: Icon(Icons.comment),
                  ))
                ];
              },
            )
          ])
        ],
      ),
    );
  }
}
