import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:spotify_app/constans.dart';


class Myownsongs extends StatelessWidget {
  const Myownsongs({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 37,
          height: 37,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Constans.playSongButton),
          child: SvgPicture.asset("assets/svgs/play-circle-svgrepo-com.svg"),
        ),
        SizedBox(
          width: 30,
        ),
        Column(  
          children: [
            Text(
              "As It Was",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Constans.mianFontWhite),
            ),
            Text(
              "Harry Styles",
              style: TextStyle(fontSize: 12, color: Constans.mainfontGrey),
            )
          ],
        ),
        SizedBox(
          width: 150,
        ),
        Text(
          "5:33",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Constans.mainfontGrey),
        ),
        SizedBox(
          width: 40,
        ),
        SvgPicture.asset("assets/svgs/heart-svgrepo-com (1).svg")
      ],
    );
  }
}
