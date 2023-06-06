part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required bool isFailed,
    required bool isSuccessful,
    required TextEditingController firstNumberController,
    required TextEditingController secondNumberController,
    required TextEditingController ansController,
  }) = _HomeState;
  factory HomeState.initial() => HomeState(
        isLoading: false,
        isFailed: false,
        isSuccessful: false,
        firstNumberController: TextEditingController(),
        secondNumberController: TextEditingController(),
        ansController: TextEditingController(),
      );
}
