import 'package:flutter/material.dart';
import 'package:spotify_app/constans.dart';
import 'package:spotify_app/modules/favouritesScreen/widgets/favouritePlayList.dart';
import 'package:spotify_app/modules/favouritesScreen/widgets/topContainer.dart';

class Favouritescreen extends StatelessWidget {
  const Favouritescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopContainer(),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Public playlists",
                style: TextStyle(fontSize: 20, color: Constans.mianFontWhite),
              ),
            ),
            Favouriteplaylist(),
          ],
        )
      ],
    );
  }
}
