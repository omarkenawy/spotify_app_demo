import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_app/constans.dart';
import 'package:spotify_app/global/widgets/customAppBar.dart';
import 'package:spotify_app/global/widgets/customButton.dart';
import 'package:spotify_app/global/widgets/customTextFormField.dart';
import 'package:spotify_app/modules/signInScreen/widgets/mainTextSignIn.dart';
import 'package:spotify_app/modules/signInScreen/widgets/otherOptions.dart';
import 'package:spotify_app/modules/signUpscreen/cubit/sign_up_cubit_cubit.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubitCubit(),
      child: BlocBuilder<SignUpCubitCubit, SignUpState>(
        builder: (context, state) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(17.0),
              child: Scaffold(
                body: Form(
                  key: context.read<SignUpCubitCubit>().formkey,
                  child: ListView(
                    children: [
                      CustomAppBar(
                        backGround: Constans.mainBlack,
                        title: SvgPicture.asset(
                          "assets/svgs/Vector.svg",
                          height: 40,
                          width: 40,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Maintextsignin(
                        mainText: 'Sign Up',
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Customtextformfield(
                        hintText: "Full Name",
                        TextColor: Constans.mainformFont,
                        TextSize: 16,
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Customtextformfield(
                        hintText: "Enter Email",
                        TextColor: Constans.mainformFont,
                        TextSize: 16,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                        onSave: (newValue) =>
                            context.read<SignUpCubitCubit>().email = newValue,
                      ),
                      SizedBox(
                        height: 20,
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
                            return "Password must be at least 6 characters ";
                          }
                          return null;
                        },
                        onSave: (newValue) => context
                            .read<SignUpCubitCubit>()
                            .Password = newValue,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          context
                              .read<SignUpCubitCubit>()
                              .createAccountWithEmailAndPassword();
                          Navigator.of(context).pushNamed("main screen");
                        },
                        child: CustomButton(
                          buttomName: "Sign up",
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
                            Navigator.of(context).pushNamed("signIn screen"),
                        child: OtherOptions(
                          blueText: 'Sign In',
                          whiteText: 'Do You Have An Account?',
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
