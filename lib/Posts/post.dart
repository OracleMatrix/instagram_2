import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Posts extends StatefulWidget {
  const Posts({super.key});

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                "https://mui.com/static/images/avatar/1.jpg",
              ),
            ),
            title: const Text(
              "Ehsan._696",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.more_vert,
              ),
            ),
            onTap: () {},
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Image.network(
                "https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w600/2023/11/best-time-to-post-on-Instagram-featured-image.png",
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.heart,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.comment,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.paperPlane,
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.bookmark,
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            "ehsan._696 and 56,764 Liked this",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(10.0, 5, 10.0, 0),
          child: Text(
            "View all 1,467 comments",
            style: TextStyle(
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://mui.com/static/images/avatar/1.jpg",
            ),
          ),
          title: TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Add a comment...",
              hintStyle: TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(
            12,
            0,
            15,
            5,
          ),
          child: Text(
            "1 day ago",
            style: TextStyle(
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ],
    );
  }
}
