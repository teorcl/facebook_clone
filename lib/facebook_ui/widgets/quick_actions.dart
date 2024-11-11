import 'package:facebook_clone/icons/custom_icons_icons.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const FittedBox(
      fit: BoxFit.scaleDown,
      child: Row(
        children: [
          QuickButton(
            text: 'Gallery',
            backgroundColorCircleButton: Color(0xffADDBA5),
            iconCircleButton: CustomIcons.photos,
            quickButtonTextColor: Color(0xff7FA774),
            backgroundColorQuickButton: Color(0xffE7FCE6),
          ),
          SizedBox(width: 16),
          QuickButton(
            text: 'Tag Friends',
            backgroundColorCircleButton: Color(0xff5A7DAF),
            iconCircleButton: CustomIcons.user_friends,
            quickButtonTextColor: Color(0xff869FAD),
            backgroundColorQuickButton: Color(0xffE4F0FA),
          ),
          SizedBox(width: 16),
          QuickButton(
            text: 'Live',
            backgroundColorCircleButton: Color(0xffFDAA95),
            iconCircleButton: Icons.photo,
            quickButtonTextColor: Color(0xffB49594),
            backgroundColorQuickButton: Color(0xffFCE9E7),
          ),
        ],
      ),
    );
  }
}
