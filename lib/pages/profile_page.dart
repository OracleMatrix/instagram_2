import 'package:flutter/material.dart';
import 'package:instagram_2/bottom_navigation_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }
}
