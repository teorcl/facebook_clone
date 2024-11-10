import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final bool hasBadge;

  const CircleButton({
    super.key,
    required this.color,
    required this.icon,
    this.hasBadge = false,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            width: 38,
            height: 38,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 16,
            ),
          ),
          if (hasBadge)
            Positioned(
              right: 0,
              top: -3.1,
              child: Container(
                width: 14,
                height: 14,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 3,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
