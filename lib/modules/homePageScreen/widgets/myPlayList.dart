import 'package:flutter/material.dart';

import 'package:spotify_app/constans.dart';
import 'package:spotify_app/modules/homePageScreen/widgets/myOwnSongs.dart';

class Myplaylist extends StatelessWidget {
  const Myplaylist({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Play List",
            style: TextStyle(
                color: Constans.mianFontWhite, fontWeight: FontWeight.bold)),
        Text(
          "See More",
          style: TextStyle(color: Constans.mainfontGrey),
        ),
        SizedBox(
          height: 10,
        ),
        Column(
          children: [
            Myownsongs(),
            SizedBox(
              height: 20,
            ),
            Myownsongs(),
            SizedBox(
              height: 20,
            ),
            Myownsongs(),
            SizedBox(
              height: 20,
            ),
            Myownsongs(),
            SizedBox(
              height: 20,
            ),
            Myownsongs(),
            SizedBox(
              height: 20,
            ),
            Myownsongs(),
          ],
        )
      ],
    );
  }
}
