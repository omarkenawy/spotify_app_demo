import 'package:flutter/material.dart';

import 'package:spotify_app/modules/homePageScreen/widgets/customBottomNav.dart';

class MainHomePage extends StatelessWidget {
  const MainHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBottomNav(),
    );
  }
}
