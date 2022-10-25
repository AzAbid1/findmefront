import 'package:flutter/material.dart';

import 'package:findmefront/utils/constants.dart';
import 'screens/home_screen.dart';
import 'screens/create_post_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Constants.themeData,
      home: const HomeScreen(),
      routes: {
        CreatePost.routeName: (ctx) => CreatePost(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
