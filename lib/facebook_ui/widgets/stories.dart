import 'package:facebook_clone/facebook_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../../models/models.dart';

final _stories = [
  StoryModel(
    backgroundImage: 'assets/wallpapers/1.jpeg',
    profileImage: 'assets/users/1.jpg',
    name: 'Laura Leporc',
  ),
  StoryModel(
    backgroundImage: 'assets/wallpapers/2.jpeg',
    profileImage: 'assets/users/2.jpg',
    name: 'Alix Luca',
  ),
  StoryModel(
    backgroundImage: 'assets/wallpapers/3.jpeg',
    profileImage: 'assets/users/3.jpg',
    name: 'Moa Rotenb',
  ),
  StoryModel(
    backgroundImage: 'assets/wallpapers/4.jpeg',
    profileImage: 'assets/users/4.jpg',
    name: 'Lucie Polis',
  ),
  StoryModel(
    backgroundImage: 'assets/wallpapers/5.jpeg',
    profileImage: 'assets/users/5.jpg',
    name: 'Jhon Wheels',
  ),
  StoryModel(
    backgroundImage: 'assets/wallpapers/6.jpeg',
    profileImage: 'assets/users/6.jpg',
    name: 'Peter Kambel',
  ),
];

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _stories.length,
        itemBuilder: (_, index) {
          final story = _stories[index];
          return StoryItem(
            story: story,
            isFirst: index == 0,
          );
        },
      ),
    );
  }
}
