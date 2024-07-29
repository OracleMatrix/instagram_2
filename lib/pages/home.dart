import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_2/Posts/post.dart';
import 'package:instagram_2/Story/stories.dart';
import 'package:instagram_2/bottom_navigation_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: const Color(0xfff8faf8),
        elevation: 1.0,
        title: SizedBox(
          height: 45.0,
          child: Image.asset(
            "assets/images/insta_logo.png",
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(
              FontAwesomeIcons.heart,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(
              FontAwesomeIcons.facebookMessenger,
            ),
          ),
        ],
      ),
      bottomNavigationBar: const MyBottomNavBar(),
      body: Expanded(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return index == 0
                ? const SizedBox(
                    height: 110,
                    child: Stories(),
                  )
                : const Posts();
          },
        ),
      ),
    );
  }
}
