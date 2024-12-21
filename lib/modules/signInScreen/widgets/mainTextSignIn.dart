import 'package:flutter/material.dart';
import 'package:spotify_app/constans.dart';

class Maintextsignin extends StatelessWidget {
  const Maintextsignin({super.key, required this.mainText});

  final String mainText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "$mainText",
          style: TextStyle(
              color: Constans.mianFontWhite,
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "If you need any support ",
              style: TextStyle(color: Constans.mianFontWhite, fontSize: 12),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Click here",
                style: TextStyle(color: Constans.mainFontGreen),
              ),
            )
          ],
        )
      ],
    );
  }
}
