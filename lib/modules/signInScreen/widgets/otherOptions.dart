import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_app/constans.dart';

class OtherOptions extends StatelessWidget {
  const OtherOptions(
      {super.key, required this.blueText, required this.whiteText});

  final String blueText;
  final String whiteText;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 1,
                width: 146,
                color: Constans.mainfontGrey,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                "OR",
                style: TextStyle(color: Constans.mainformFont),
              ),
              SizedBox(
                width: 4,
              ),
              Container(
                height: 1,
                width: 146,
                color: Constans.mainfontGrey,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/svgs/Group 26.svg"),
              SizedBox(
                width: 60,
              ),
              SvgPicture.asset("assets/svgs/Vector (1).svg")
            ],
          ),
          SizedBox(
            height: 90,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$whiteText ",
                style: TextStyle(
                    color: Constans.mianFontWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
              Text(
                "$blueText ",
                style: TextStyle(
                    color: Constans.mainFontBlue,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
            ],
          )
        ],
      ),
    );
  }
}
