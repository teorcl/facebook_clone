import 'package:flutter/material.dart';

import 'widgets.dart';

class WhatIsOnYourMind extends StatelessWidget {
  const WhatIsOnYourMind({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Avatar(size: 54, asset: 'assets/users/1.jpg'),
        SizedBox(width: 20),
        Flexible(
          child: Text(
            'What\'s on your mind, Lisa?',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
