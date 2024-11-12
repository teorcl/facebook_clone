import 'package:facebook_clone/models/story_model.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

class StoryItem extends StatelessWidget {
  final StoryModel story;
  final bool isFirst;

  const StoryItem({
    super.key,
    required this.story,
    required this.isFirst,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 160,
      margin: EdgeInsets.only(
        left: isFirst ? 20 : 0,
        right: 16,
      ),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      color: Colors.grey,
                      image: DecorationImage(
                        image: AssetImage(story.backgroundImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Avatar(
                    size: 40,
                    asset: story.profileImage,
                    borderWidth: 3,
                  ),
                ),
              ],
            ),
          ),
          Text(
            story.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
