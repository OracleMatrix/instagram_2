import 'package:flutter/material.dart';
import 'package:instagram_2/bottom_navigation_bar.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}
