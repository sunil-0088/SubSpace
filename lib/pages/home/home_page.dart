import 'package:flutter/material.dart';

import 'package:sub_space/helper/data_base.dart';
import 'package:sub_space/pages/home/components/all_public_group_button.dart';
import 'package:sub_space/pages/home/components/group_tile.dart';
import 'package:sub_space/pages/home/components/image_slider.dart';
import 'package:sub_space/pages/home/components/play_and_earn.dart';
import 'package:sub_space/pages/home/components/suggestion_box.dart';
import 'package:sub_space/utils/constant.dart';

import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import 'components/subscription_grid_view.dart';
import 'components/title_tile.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  HomePage({super.key});

  int idx = 1;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var index = 1;
  final AppBar _appBar = AppBar(
    backgroundColor: const Color.fromARGB(225, 27, 27, 27),
    title: const Text(
      "Explore",
      // style: TextStyle(fontWeight: FontWeight.bold),
    ),
    actions: const [
      AppBarActionWidget(imageURl: 'assets/icons/achivement.png'),
      AppBarActionWidget(imageURl: 'assets/icons/cart.png'),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color.fromARGB(225, 33, 33, 33),
      appBar: _appBar,
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.black,
        activeColor: kAceentColor,
        color: Colors.white,
        curveSize: 100,
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.map, title: 'Explore'),
          TabItem(icon: Icons.account_balance, title: 'SubSpace'),
          TabItem(icon: Icons.message, title: 'Chat'),
          TabItem(icon: Icons.people, title: 'SubPay'),
        ],
        onTap: (int i) {},
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PlayAndEarn(),
            const ImageSlider(),
            const TitleTile(
              title: 'All Subscription',
            ),
            const SubscriptionGridView(),
            const TitleTile(
              title: 'Public Groups',
            ),
            for (var groupItem in allGroups)
              GroupTile(
                  name: groupItem.name,
                  totalMember: groupItem.totalMember,
                  joinedMember: groupItem.joinedMember,
                  prize: groupItem.prize,
                  memberName: groupItem.memberName,
                  plateformImage: groupItem.plateformImage),
            const AllPublicGroupButton(),
            const SuggestionBox(),
          ],
        ),
      ),
    ));
  }
}

class AppBarActionWidget extends StatelessWidget {
  final String imageURl;
  const AppBarActionWidget({
    Key? key,
    required this.imageURl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: CircleAvatar(
        backgroundColor: kPrimaryColor,
        radius: 18,
        child: CircleAvatar(
          backgroundColor: kAceentColor,
          radius: 16,
          child: IconButton(
            splashRadius: 1,
            padding: EdgeInsets.zero,
            icon: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset(
                imageURl,
                color: Colors.white,
                fit: BoxFit.cover,
              ),
            ),
            // color: Colors.white,
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
