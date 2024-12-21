part of 'sign_in_cubit.dart';

@immutable
class SignInState {
  final bool isLoading;
  final String? error;

  const SignInState({this.isLoading = false, this.error});
  SignInState copyWith({
    bool? isLoading,
    String? error,
  }) {
    return SignInState(
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}
