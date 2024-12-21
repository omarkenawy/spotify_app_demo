import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    goToFirstScreen();
  }

  void goToFirstScreen() {
    Future.delayed(const Duration(seconds: 6))
        .then((value) => {Navigator.of(context).pushNamed("first screen")});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 97,
              top: 393,
              child:
                  Container(child: SvgPicture.asset("assets/svgs/Vector.svg")))
        ],
      ),
    );
  }
}
