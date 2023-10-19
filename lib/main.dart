import 'package:masakuy/pages/CategoryListPage.dart';
import 'package:masakuy/pages/HomePage.dart';
import 'package:masakuy/pages/ProfilePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 20, 20, 19),
      ),
      routes: {
        "/": (context) => HomePage(),
        "categoryListPage": (context) => CategoryListPage(),
        "profilePage": (context) => ProfilePage(),
      },
    );
  }
}
