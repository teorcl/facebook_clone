import 'package:facebook_clone/facebook_ui/widgets/widgets.dart';
import 'package:facebook_clone/icons/custom_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import 'widgets/circle_button.dart';

class FacebookUi extends StatelessWidget {
  const FacebookUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        leading: SvgPicture.asset(
          'assets/logos/facebook.svg',
          colorFilter: const ColorFilter.mode(
            Colors.blueAccent,
            BlendMode.srcIn,
          ),
        ),
        leadingWidth: 150,
        actions: const [
          CircleButton(
            color: Colors.grey,
            icon: CustomIcons.search,
          ),
          SizedBox(width: 14),
          CircleButton(
            color: Colors.red,
            icon: CustomIcons.bell,
          ),
          SizedBox(width: 14),
          CircleButton(
            color: Color(0xff81B7FD),
            icon: CustomIcons.user_friends,
            hasBadge: true,
          ),
          SizedBox(width: 14),
          CircleButton(
            color: Color(0xff1B88E5),
            icon: CustomIcons.messenger,
          ),
          SizedBox(width: 20),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          WhatIsOnYourMind(),
        ],
      ),
    );
  }
}
