import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(_lightTheme); // Initial theme is light

  static final ThemeData _lightTheme = ThemeData(
    brightness: Brightness.light,
  );

  static final ThemeData _darkTheme = ThemeData(
    brightness: Brightness.dark,
  );

  void setLightTheme() => emit(_lightTheme);

  void setDarkTheme() => emit(_darkTheme);
}
