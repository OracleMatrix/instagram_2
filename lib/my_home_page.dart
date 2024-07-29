import 'package:flutter/material.dart';
import 'package:instagram_2/pages/favorite_page.dart';
import 'package:instagram_2/pages/home.dart';
import 'package:instagram_2/pages/plus_page.dart';
import 'package:instagram_2/pages/profile_page.dart';
import 'package:instagram_2/pages/search_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _currentIndex = 0;

  Widget _getRoute(int index) {
    switch (index) {
      case 0:
        return const Home();
      case 1:
        return const SearchPage();
      case 2:
        return const PlusPage();
      case 3:
        return const FavoritePage();
      case 4:
        return const ProfilePage();
      default:
        return const Home();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getRoute(_currentIndex),
    );
  }
}
