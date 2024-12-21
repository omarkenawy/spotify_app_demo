import 'package:flutter/material.dart';

import 'package:spotify_app/constans.dart';
import 'package:spotify_app/global/widgets/popMenuButton.dart';

class Ownfavouritesongs extends StatelessWidget {
  const Ownfavouritesongs({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 37,
            height: 37,
            decoration: BoxDecoration(
              color: Constans.playSongButton,
              borderRadius: BorderRadius.circular(9),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(9),
              child: Image.asset(
                "assets/images/BADHABIT.jpg",
                fit: BoxFit.contain,
              ),
            )),
        SizedBox(
          width: 30,
        ),
        Column(
          children: [
            Text(
              "Bad Habit",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Constans.mianFontWhite),
            ),
            Text(
              "Steve Lacy",
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
        CustomPopmenubutton()
      ],
    );
  }
}
