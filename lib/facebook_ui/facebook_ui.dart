import 'package:facebook_clone/facebook_ui/widgets/widgets.dart';
import 'package:facebook_clone/icons/custom_icons_icons.dart';
import 'package:facebook_clone/models/models.dart';
import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class FacebookUi extends StatelessWidget {
  const FacebookUi({super.key});

  @override
  Widget build(BuildContext context) {
    final faker = Faker();
    final List<PublicationsModel> publications = [];
    for (int i = 0; i < 50; i++) {
      final random = faker.randomGenerator;
      const reactions = Reaction.values;
      final reactionIndex = random.integer(reactions.length - 1);

      final publication = PublicationsModel(
        user: User(
          avatar: faker.image.loremPicsum(),
          username: faker.person.name(),
        ),
        title: faker.lorem.sentence(),
        createdAt: faker.date.dateTime(),
        imageUrl: faker.image.loremPicsum(),
        commentsCount: random.integer(50000),
        sharesCount: random.integer(50000),
        currentUserReaction: reactions[reactionIndex],
      );

      publications.add(publication);
    }

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
        children: [
          const WhatIsOnYourMind(),
          const SizedBox(height: 28),
          const QuickActions(),
          const SizedBox(height: 10),
          const Stories(),
          const SizedBox(height: 10),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (_, index) {
              final publication = publications[index];
              return PublicationItem(publication: publication);
            },
            itemCount: publications.length,
          ),
        ],
      ),
    );
  }
}
