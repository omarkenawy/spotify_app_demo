import 'package:flutter/material.dart';
import 'package:spotify_app/constans.dart';

class CustomPopmenubutton extends StatelessWidget {
  const CustomPopmenubutton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        iconColor: Constans.mianFontWhite,
        color: Constans.mianFontWhite,
        itemBuilder: (context) => [
              PopupMenuItem(
                child: Text(
                  "Settings",
                  style: TextStyle(color: Constans.mainBlack),
                ),
              ),
            ]);
  }
}
