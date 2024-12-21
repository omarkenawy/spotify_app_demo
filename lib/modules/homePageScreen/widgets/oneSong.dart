import 'package:flutter/material.dart';
import 'package:spotify_app/constans.dart';

class OneSong extends StatelessWidget {
  const OneSong({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black),
                child: Image.asset(
                  "assets/images/Rectangle 9.png",
                  fit: BoxFit.cover,
                )),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Scorpion",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Constans.mianFontWhite),
                ),
                Text(
                  "Drake",
                  style: TextStyle(fontSize: 14, color: Constans.mianFontWhite),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
