import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_app/constans.dart';
import 'package:spotify_app/global/widgets/customButton.dart';

import 'package:spotify_app/modules/chooseThemeScreen/bloc/chooseThemeCubit.dart';

class ChooseTheme extends StatelessWidget {
  const ChooseTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeCubit>(
      create: (context) => ThemeCubit(),
      child: Scaffold(
        body: Stack(
          children: [
            Container(
                width: double.infinity,
                height: double.infinity,
                child: Image.asset(
                    fit: BoxFit.cover,
                    "assets/images/wp5809281-billie-eilish-green-hair-wallpapers 1.png")),
            Positioned(
              left: 97,
              top: 30,
              child: SvgPicture.asset("assets/svgs/Vector.svg"),
            ),
            Positioned(
              left: 118,
              top: 438,
              child: Column(
                children: [
                  Text(
                    "Choose mode",
                    style: TextStyle(
                        color: Constans.mianFontWhite,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  BlocBuilder<ThemeCubit, ThemeData>(
                    builder: (context, theme) => Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.read<ThemeCubit>().setDarkTheme();
                          },
                          child: Container(
                            width: 73,
                            height: 73,
                            child: SvgPicture.asset(
                              "assets/svgs/moon-svgrepo-com.svg",
                              fit: BoxFit.none,
                            ),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Constans.mainfontGrey.withOpacity(0.5)),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            context.read<ThemeCubit>().setLightTheme();
                          },
                          child: Container(
                            child: SvgPicture.asset(
                              "assets/svgs/sun-2-svgrepo-com.svg",
                              fit: BoxFit.none,
                            ),
                            width: 73,
                            height: 73,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Constans.mainfontGrey.withOpacity(0.5)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
            Positioned(
              left: 33,
              top: 683,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("register screen");
                },
                child: CustomButton(
                  buttonColor: Constans.mainFontGreen,
                  buttomName: 'Get Started',
                  fontSize: 22,
                  wsize: 329,
                  hsize: 92,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
