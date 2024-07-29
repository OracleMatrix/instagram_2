import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_2/pages/favorite_page.dart';
import 'package:instagram_2/pages/home.dart';
import 'package:instagram_2/pages/plus_page.dart';
import 'package:instagram_2/pages/profile_page.dart';
import 'package:instagram_2/pages/search_page.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => _getRoute(index)),
    );
  }

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
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      onTap: _onItemTapped,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.house,
            color: Colors.black,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: Colors.black,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.squarePlus,
            color: Colors.black,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.video,
            color: Colors.black,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.user,
            color: Colors.black,
          ),
          label: '',
        ),
      ],
    );
  }
}
