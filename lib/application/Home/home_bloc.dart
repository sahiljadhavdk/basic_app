import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initState) : super(initState) {
    on<_OnAdd>((event, emit) {
      int num1 = int.parse(state.firstNumberController.text);
      int num2 = int.parse(state.secondNumberController.text);
      state.ansController.text = (num1 + num2).toString();
    });
    on<_OnSubtract>((event, emit) {
      int num1 = int.parse(state.firstNumberController.text);
      int num2 = int.parse(state.secondNumberController.text);
      state.ansController.text = (num1 - num2).toString();
    });
  }
}
