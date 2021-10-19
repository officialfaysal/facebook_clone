// ignore_for_file: prefer_const_constructors

import 'package:facebook_clone/models/models.dart';

final User currentUser = User(
  'Faysal',
  'assets/images/avatar.jpg',
);

final List<User> onlineUsers = [
  User(
    'Dhaka',
    'assets/images/dhaka.jpg',
  ),
  User(
    'Australia',
    'assets/images/australia.jpg',
  ),
  User(
    'Bogota',
    'assets/images/bogota.jpg',
  ),
  User(
    'England',
    'assets/images/england.jpg',
  ),
  User(
    'Moscow',
    'assets/images/moscow.jpg',
  ),
  User(
    'Myself',
    'assets/images/avatar.jpg',
  ),
];

final List<Story> stories = [
  Story(
    user: onlineUsers[2],
    imageUrl: 'assets/images/avatar.jpg',
  ),
  Story(
    user: onlineUsers[4],
    imageUrl: 'assets/images/avatar.jpg',
    isViewed: true,
  ),
];

final List<Post> posts = [
  Post(
    user: onlineUsers[3],
    caption: 'nice patkhet',
    timeAgo: '4 hours ago',
    imageUrl: 'assets/images/moscow.jpg',
    likes: 90,
    comments: 5,
    shares: 1,
  ),
  Post(
    user: onlineUsers[1],
    caption: 'gorom baire vai onk',
    timeAgo: '10 mins',
    imageUrl: 'assets/images/bangladesh.jpg',
    likes: 30,
    comments: 154,
    shares: 24,
  ),
];
