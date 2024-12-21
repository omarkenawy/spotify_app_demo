import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_app/constans.dart';
import 'package:spotify_app/global/widgets/customButton.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constans.mainBlack,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
              left: 244,
              top: -10.87,
              child: SvgPicture.asset("assets/svgs/Union (1).svg")),
          Positioned(
              left: 268.6,
              top: 579,
              child: SvgPicture.asset("assets/svgs/Union (2).svg")),
          Positioned(
              left: 98,
              top: 175,
              child: SvgPicture.asset("assets/svgs/Vector.svg")),
          Positioned(
              left: 48,
              top: 301,
              child: Text(
                "Enjoy listening to music",
                style: TextStyle(
                    color: Constans.mianFontWhite,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              )),
          Positioned(
              left: 34,
              top: 357,
              child: Container(
                width: 306,
                height: 46,
                child: Text(
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Constans.mainfontGrey),
                    "Spotify is a proprietary Swedish audio streaming and media services provider "),
              )),
          Positioned(
              left: 1.72,
              top: 433.3,
              child: Image.asset(
                  "assets/images/15mag-billie-03-master675-v3 1.png")),
          Positioned(
            left: 30,
            top: 433,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed("signUp screen");
                  },
                  child: CustomButton(
                    buttomName: "Register",
                    wsize: 147,
                    hsize: 73,
                    buttonColor: Constans.mainFontGreen,
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed("signIn screen");
                  },
                  child: CustomButton(
                    buttomName: "Sign In",
                    wsize: 147,
                    hsize: 73,
                    buttonColor: Constans.mainBlack,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
