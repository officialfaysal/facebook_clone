// ignore_for_file: file_names, prefer_const_constructors, deprecated_member_use

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'models/models.dart';
import 'screens/screens.dart';
import 'widget_barrel.dart';
import 'screens/profile_avatar.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({
    Key? key,
    required this.currentUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12, 8, 12, 0),
      color: Colors.brown,
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvatar(imageUrl: currentUser.imageUrl),
              TextField(
                decoration: InputDecoration(
                  hintText: 'What\'s on your mind!!',
                ),
              )
            ],
          ),
          const Divider(height: 10, thickness: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlatButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.videocam,
                  color: Colors.red,
                ),
                label: Text('Live'),
              ),
              const VerticalDivider(width: 5),
              FlatButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.photo_sharp,
                  color: Colors.green,
                ),
                label: Text('Live'),
              ),
              const VerticalDivider(width: 5),
              FlatButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.video_call,
                  color: Colors.purple,
                ),
                label: Text('Live'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
