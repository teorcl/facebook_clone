import 'package:flutter/material.dart';

import '../../icons/custom_icons_icons.dart';
import 'circle_button.dart';

class QuickButton extends StatelessWidget {
  final Color backgroundColorCircleButton;
  final IconData iconCircleButton;
  final Color quickButtonTextColor;
  final Color backgroundColorQuickButton;
  final String text;

  const QuickButton({
    super.key,
    required this.backgroundColorCircleButton,
    required this.iconCircleButton,
    required this.quickButtonTextColor,
    required this.backgroundColorQuickButton,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: backgroundColorQuickButton,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleButton(
            color: backgroundColorCircleButton,
            icon: CustomIcons.photos,
          ),
          const SizedBox(width: 16),
          Text(
            text,
            style: TextStyle(
              color: quickButtonTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
