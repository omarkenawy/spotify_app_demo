import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'sign_up_cubit_state.dart';

class SignUpCubitCubit extends Cubit<SignUpState> {
  SignUpCubitCubit() : super(SignUpState());

  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String? Password;
  String? email;

  void createAccountWithEmailAndPassword() async {
    emit(state.copyWith(isLoading: true));
    if (formkey.currentState?.validate() == false) return;
    formkey.currentState!.save();
    log(email.toString());
    log(Password.toString());

    try {
      final newAccount = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email!, password: Password!);
      if (newAccount.user == null) return;
      log(newAccount.user!.uid.toString());
    } on FirebaseAuthException catch (error) {
      emit(state.copyWith(error: error.message.toString()));
      log(error.message.toString());
    } catch (e) {
      emit(state.copyWith(error: e.toString()));
      log(e.toString());
    }
    emit(state.copyWith(isLoading: false));
  }
}
