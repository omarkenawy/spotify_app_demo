import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_app/constans.dart';
import 'package:spotify_app/global/widgets/customAppBar.dart';

import 'package:spotify_app/global/widgets/customButton.dart';
import 'package:spotify_app/global/widgets/customTextFormField.dart';
import 'package:spotify_app/modules/signInScreen/cubit/sign_in_cubit.dart';

import 'package:spotify_app/modules/signInScreen/widgets/mainTextSignIn.dart';
import 'package:spotify_app/modules/signInScreen/widgets/otherOptions.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(),
      child: BlocBuilder<SignInCubit, SignInState>(
        builder: (context, state) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(17.0),
              child: Scaffold(
                appBar: CustomAppBar(
                  backGround: Colors.transparent,
                  title: SvgPicture.asset(
                    "assets/svgs/Vector.svg",
                    height: 40,
                    width: 40,
                  ),
                ),
                backgroundColor: Constans.mainBlack,
                body: Form(
                  key: context.read<SignInCubit>().formKey,
                  child: ListView(
                    children: [
                      Maintextsignin(
                        mainText: 'Sign In',
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Customtextformfield(
                        hintText: "enter username or email",
                        TextColor: Constans.mainformFont,
                        TextSize: 16,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                        onSave: (newValue) =>
                            context.read<SignInCubit>().email = newValue,
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Customtextformfield(
                        hintText: "Password",
                        TextColor: Constans.mainformFont,
                        TextSize: 16,
                        SufIcon: Icon(Icons.remove_red_eye_outlined),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "This field can not be empty";
                          }
                          if (value.length < 6) {
                            return "the length of the characters should be less than 10 ";
                          }
                          return null;
                        },
                        onSave: (newValue) =>
                            context.read<SignInCubit>().Password = newValue,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          context
                              .read<SignInCubit>()
                              .signInwithEmailAndPassword();
                          Navigator.of(context).pushNamed("main screen");
                        },
                        child: CustomButton(
                          buttomName: "Sign In",
                          buttonColor: Constans.mainFontGreen,
                          wsize: 325,
                          hsize: 80,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () =>
                            Navigator.of(context).pushNamed("signUp screen"),
                        child: OtherOptions(
                          blueText: 'Register Now',
                          whiteText: 'Not A Member?',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
