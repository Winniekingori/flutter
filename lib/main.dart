import 'package:flutter/material.dart';
import 'package:myapp/screens/home.dart';
import 'package:provider/provider.dart';
// import 'package:testing_app/models/favorites.dart';
// import 'package:testing_app/screens/favorites.dart';
// import 'package:testing_app/screens/home.dart';

import 'models/favorites.dart';
import 'screens/favorites.dart';

void main() {
  runApp(TestingApp());
}

class TestingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Favorites>(
      create: (context) => Favorites(),
      child: MaterialApp(
        title: 'Testing Sample',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          HomePage.routeName: (context) => HomePage(),
          FavoritesPage.routeName: (context) => FavoritesPage(),
        },
        initialRoute: HomePage.routeName,
      ),
    );
  }
}
