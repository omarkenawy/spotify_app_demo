import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignInAppBar extends StatelessWidget {
  const SignInAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: SvgPicture.asset(
            "assets/svgs/left-arrow-back-svgrepo-com.svg",
            height: 34,
            width: 34,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          width: 110,
        ),
        Container(
            width: 109,
            height: 33,
            child: SvgPicture.asset("assets/svgs/Vector.svg"))
      ],
    );
  }
}
