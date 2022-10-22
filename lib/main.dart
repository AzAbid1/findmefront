import 'package:findmefront/utils/constants.dart';
import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'FindMe'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    const List pages = [
      {
        'title': 'Home',
        'icon': Icons.home,
        'page': null,
        'index': 0,
      },
      {
        'title': 'Search',
        'icon': Icons.search,
        'page': null,
        'index': 1,
      },
      {
        'title': 'Notification',
        'icon': Icons.notifications,
        'page': null,
        'index': 2,
      },
      {
        'title': 'Profile',
        'icon': Icons.chat,
        'page': null,
        'index': 3,
      },
    ];

    final bottomAppBar = BottomAppBar(
        shape: const AutomaticNotchedShape(RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
        )),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 5),
            for (Map item in pages)
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: IconButton(
                  icon: Icon(
                    item['icon'],
                    size: 25.0,
                  ),
                  onPressed: () => null,
                ),
              ),
            const SizedBox(width: 5)
          ],
        ));

    final appBar = AppBar(
      elevation: 0,
      iconTheme: IconThemeData(color: Theme.of(context).colorScheme.primary),
      title: Image.asset(
        'assets/images/logo.png',
        fit: BoxFit.fill,
        height: 35,
      ),
      centerTitle: true,
      actions: [
        Container(
          margin: EdgeInsets.only(right: 5),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile_default.jpg'),
          ),
        )
      ],
    );

    return Scaffold(
        drawer: Drawer(),
        appBar: appBar,
        bottomNavigationBar: bottomAppBar,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).colorScheme.primary,
          onPressed: null,
          child: Icon(Icons.add,color: Theme.of(context).colorScheme.secondary),
        ),
        body: SingleChildScrollView(
          child: Column(),
        ));
  }
}
