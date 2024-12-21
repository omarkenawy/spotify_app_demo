import 'package:flutter/material.dart';

import 'package:spotify_app/modules/homePageScreen/widgets/oneSong.dart';

class Customsongs extends StatelessWidget {
  const Customsongs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 277,
      width: 147,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OneSong(),
                SizedBox(
                  width: 20,
                ),
                OneSong(),
                SizedBox(
                  width: 20,
                ),
                OneSong(),
                SizedBox(
                  width: 20,
                ),
                OneSong(),
                SizedBox(
                  width: 20,
                ),
                OneSong(),
                SizedBox(
                  width: 20,
                ),
                OneSong(),
                SizedBox(
                  width: 20,
                ),
                OneSong(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
