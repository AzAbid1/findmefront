import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'feed_screen.dart';
import 'create_post_screen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/homepage';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List screens = [
    {'title': 'Home', 'icon': Icons.home, 'screen': FeedScreen()},
    {
      'title': 'Notification',
      'icon': Icons.notifications,
      'screen': Text('Notification')
    },
    {'title': 'Messages', 'icon': Icons.chat, 'screen': Text('messages')},
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // This code serves to block horizontal orientation (Aziz)
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitUp,
    ]);

    var bottomAppBar = BottomNavigationBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      unselectedItemColor: Colors.white70,
      selectedItemColor: Colors.white,
      currentIndex: currentIndex,
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      items: [
        for (Map item in screens)
          BottomNavigationBarItem(
              icon: Icon(item['icon']), label: item['title']),
      ],
    );

    final appBar = AppBar(
      elevation: 0,
      leading: TextButton(
        onPressed: null,
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/profile_default.jpg'),
        ),
      ),
      title: Image.asset(
        'assets/images/logo.png',
        fit: BoxFit.fill,
        height: 35,
      ),
      centerTitle: true,
      //actionsIconTheme: IconThemeData(color: Theme.of(context).colorScheme.primary),
      actions: [
        IconButton(
          onPressed: null,
          icon: Icon(Icons.search),
        )
      ],
    );

    return Scaffold(
      extendBody: true,
      appBar: appBar,
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: bottomAppBar),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        onPressed: () {
          Navigator.of(context).pushNamed(CreatePost.routeName);
        } ,
        child:
        Icon(Icons.add, color: Theme.of(context).colorScheme.secondary),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: screens[currentIndex]['screen'],

    );
  }
}
