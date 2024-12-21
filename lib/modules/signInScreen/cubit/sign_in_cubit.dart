import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInState());
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String? email;
  String? Password;

  void signInwithEmailAndPassword() async {
    emit(state.copyWith(isLoading: true));
    if (formKey.currentState?.validate() == false) return;
    formKey.currentState!.save();
    log(email.toString());
    log(Password.toString());
    try {
      final userAccount = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email!, password: Password!);
      if (userAccount.user == null) {
        emit(state.copyWith(error: "Failed to sign in"));
        return;
      }
      {
        log("Sign-in successful: ${userAccount.user!.uid}");
      }
      log(userAccount.user!.uid.toString());
    } on FirebaseAuthException catch (e) {
      emit(state.copyWith(error: e.message.toString()));
      log(e.message.toString());
    } catch (e) {
      emit(state.copyWith(error: e.toString()));
      log(e.toString());
    }
    emit(state.copyWith(isLoading: false));
  }
}
