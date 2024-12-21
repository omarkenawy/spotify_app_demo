import 'package:flutter/material.dart';
import 'package:spotify_app/constans.dart';

class ThemeAppColors {
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Constans.mianFontWhite,
    brightness: Brightness.light,
  );

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Constans.mainBlack,
    brightness: Brightness.dark,
  );
}
