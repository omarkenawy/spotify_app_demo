import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_app/constans.dart';
import 'package:spotify_app/global/widgets/customAppBar.dart';
import 'package:spotify_app/global/widgets/popMenuButton.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
              color: Constans.inactivecolorNav,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30))),
        ),
        CustomAppBar(
          backGround: Colors.transparent,
          title: Text(
            "Profile",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Constans.mianFontWhite),
          ),
          button: CustomPopmenubutton(),
        ),
        Positioned(
          left: 170,
          top: 78,
          child: Container(
              height: 73,
              width: 73,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(56),
                child: Image.asset(
                  "assets/images/images.jpg",
                  fit: BoxFit.contain,
                ),
              )),
        ),
        Positioned(
            top: 24,
            left: 10,
            child: SvgPicture.asset("assets/svgs/Union (3).svg")),
        Positioned(
          left: 120,
          top: 182,
          child: Text(
            "Soroushnorozyui@gmail.com",
            style: TextStyle(fontSize: 12, color: Constans.mainfontGrey),
          ),
        ),
        Positioned(
          left: 145,
          top: 206,
          child: Text(
            "Soroushnrz",
            style: TextStyle(fontSize: 20, color: Constans.mianFontWhite),
          ),
        ),
        Positioned(
          top: 241,
          left: 110,
          child: Row(
            children: [
              Column(
                children: [
                  Text(
                    "778",
                    style:
                        TextStyle(fontSize: 20, color: Constans.mianFontWhite),
                  ),
                  Text(
                    "Followes",
                    style:
                        TextStyle(fontSize: 14, color: Constans.mianFontWhite),
                  )
                ],
              ),
              SizedBox(
                width: 70,
              ),
              Column(
                children: [
                  Text(
                    "243",
                    style:
                        TextStyle(fontSize: 20, color: Constans.mianFontWhite),
                  ),
                  Text(
                    "Followes",
                    style:
                        TextStyle(fontSize: 14, color: Constans.mianFontWhite),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
