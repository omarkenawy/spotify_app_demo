import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:spotify_app/global/widgets/customAppBar.dart';
import 'package:spotify_app/global/widgets/popMenuButton.dart';

import 'package:spotify_app/modules/homePageScreen/widgets/customSongs.dart';
import 'package:spotify_app/modules/homePageScreen/widgets/myPlayList.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        CustomAppBar(
          backGround: Colors.transparent,
          title: SvgPicture.asset(
            "assets/svgs/Vector.svg",
            height: 40,
            width: 40,
          ),
          button: CustomPopmenubutton(),
        ),
        SvgPicture.asset("assets/svgs/Frame 2.svg"),
        SizedBox(
          height: 30,
        ),
        Customsongs(),
        SizedBox(
          height: 20,
        ),
        Myplaylist()
      ],
    ));
  }
}
