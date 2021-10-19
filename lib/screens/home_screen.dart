// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:facebook_clone/circle_button.dart';
import 'package:facebook_clone/createPost.dart';
import 'package:facebook_clone/data.dart';
import 'package:facebook_clone/models/models.dart';
import 'package:facebook_clone/palette.dart';
import 'package:facebook_clone/screens/post_container.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              brightness: Brightness.light,
              backgroundColor: Colors.white,
              title: Text(
                'facebook',
                style: TextStyle(
                  fontSize: 25,
                  letterSpacing: -1,
                  color: Palette.facebookBlue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              floating: true,
              actions: [
                CircleButton(
                  icon: Icons.search,
                  iconSize: 30,
                  onPressed: () {},
                ),
                CircleButton(
                  icon: MdiIcons.facebookMessenger,
                  iconSize: 30,
                  onPressed: () {},
                )
              ],
            ),
            SliverToBoxAdapter(
              child: CreatePostContainer(
                currentUser: currentUser,
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
              sliver: SliverToBoxAdapter(
                child: Rooms(onlineUsers: onlineUsers),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(0, 3, 0, 3),
              sliver: SliverToBoxAdapter(
                child: Stories(
                  currentUser: currentUser,
                  stories: stories,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                final Post post = posts[index];
                return PostContainer(post: post);
              }),
            ),
          ],
        ),
      );
}
