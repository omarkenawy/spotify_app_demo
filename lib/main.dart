import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:spotify_app/modules/chooseThemeScreen/chooseTheme.dart';
import 'package:spotify_app/modules/favouritesScreen/favouriteScreen.dart';
import 'package:spotify_app/modules/firstScreen/first_screen.dart';
import 'package:spotify_app/modules/homePageScreen/homePageScreen.dart';
import 'package:spotify_app/modules/homePageScreen/mainHomePage.dart';
import 'package:spotify_app/modules/homePageScreen/widgets/customSongs.dart';

import 'package:spotify_app/modules/registerScreen/registerScreen.dart';
import 'package:spotify_app/modules/signInScreen/sign_in_screen.dart';
import 'package:spotify_app/modules/signUpscreen/signUpscreen.dart';
import 'package:spotify_app/modules/songScreen/songScreen.dart';

import 'package:spotify_app/modules/splashScreen/splash_screen.dart';
import 'package:spotify_app/utils/appThemeColor.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: "AIzaSyAScFifvPtcsv6M4Aw2Ak_CG76qsLOGLK4",
    appId: "1:738650710010:android:9fb0a313d40197c2728e43",
    messagingSenderId: "738650710010",
    projectId: "spotifyapp-demo",
    storageBucket: "spotifyapp-demo.firebasestorage.app",
  ));
  runApp(
    MaterialApp(
      theme: ThemeAppColors.darkTheme,
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Spotify Demo',
      routes: {
        "splash screen": (context) => SplashScreen(),
        "first screen": (context) => FirstScreen(),
        "choosetheme screen": (context) => ChooseTheme(),
        "register screen": (context) => RegisterScreen(),
        "signIn screen": (context) => SignInScreen(),
        "signUp screen": (context) => SignUpScreen(),
        "main screen": (context) => MainHomePage(),
        "Customsongs": (context) => Customsongs(),
        "favourite screen": (context) => Favouritescreen(),
        "songscreen": (context) => SongScreen(),
        "home screen": (context) => HomeScreen()
      },
      initialRoute: "main screen",
    ),
  );
}
