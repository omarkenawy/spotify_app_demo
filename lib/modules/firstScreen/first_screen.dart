import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_app/constans.dart';
import 'package:spotify_app/global/widgets/customButton.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                  fit: BoxFit.cover,
                  "assets/images/wp4780558-billie-eilish-glasses-wallpapers 1.png")),
          Positioned(
            left: 97,
            top: 37,
            child: SvgPicture.asset("assets/svgs/Vector.svg"),
          ),
          Positioned(
            left: 70,
            top: 499,
            child: Container(
              width: 284,
              height: 34,
              child: Text(
                "Enjoy listening to music",
                style: TextStyle(
                    color: Constans.mianFontWhite,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Positioned(
            left: 47,
            top: 554,
            child: Container(
              width: 297,
              height: 94,
              child: Text(
                maxLines: 4,
                textAlign: TextAlign.center,
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.",
                style: TextStyle(
                  color: Constans.mianFontWhite,
                ),
              ),
            ),
          ),
          Positioned(
              left: 33,
              top: 683,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("choosetheme screen");
                },
                child: CustomButton(
                  buttonColor: Constans.mainFontGreen,
                  buttomName: 'Get Started',
                  fontSize: 22,
                  wsize: 329,
                  hsize: 92,
                ),
              )),
        ],
      ),
    );
  }
}
