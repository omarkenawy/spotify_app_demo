import 'package:flutter/material.dart';

import 'package:spotify_app/modules/favouritesScreen/widgets/ownFavouriteSongs.dart';

class Favouriteplaylist extends StatelessWidget {
  const Favouriteplaylist({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Ownfavouritesongs(),
        SizedBox(
          height: 20,
        ),
        Ownfavouritesongs(),
        SizedBox(
          height: 20,
        ),
        Ownfavouritesongs(),
        SizedBox(
          height: 20,
        ),
        Ownfavouritesongs(),
        SizedBox(
          height: 20,
        ),
        Ownfavouritesongs(),
        SizedBox(
          height: 20,
        ),
        Ownfavouritesongs(),
        SizedBox(
          height: 20,
        ),
        Ownfavouritesongs(),
        SizedBox(
          height: 20,
        ),
        Ownfavouritesongs(),
        SizedBox(
          height: 20,
        ),
        Ownfavouritesongs(),
        SizedBox(
          height: 20,
        ),
        Ownfavouritesongs(),
        SizedBox(
          height: 20,
        ),
        Ownfavouritesongs(),
        SizedBox(
          height: 20,
        ),
        Ownfavouritesongs(),
      ],
    );
  }
}
