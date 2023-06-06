import 'package:app/application/Home/home_bloc.dart';
import 'package:app/presentation/core/custom_textfield.dart';
import 'package:app/presentation/core/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(HomeState.initial()),
      child: const HomeScreenConsumer(),
    );
  }
}

class HomeScreenConsumer extends StatelessWidget {
  const HomeScreenConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text('Calculator'),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    PrimaryTextField(
                      controller: state.firstNumberController,
                      hintText: 'Enter first number',
                      fillColor: Colors.transparent,
                      keyboardType: TextInputType.number,
                      textStyle: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Colors.black),
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    PrimaryTextField(
                      controller: state.secondNumberController,
                      hintText: 'Enter Second number',
                      fillColor: Colors.transparent,
                      keyboardType: TextInputType.number,
                      textStyle: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Colors.black),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PrimaryButton(
                          width: 40.w,
                          text: 'Add',
                          elevation: 0,
                          function: () {
                            context
                                .read<HomeBloc>()
                                .add(const HomeEvent.onAdd());
                          },
                          backgroundColor: Colors.blue,
                          textColor: Colors.white,
                        ),
                        PrimaryButton(
                          width: 40.w,
                          text: 'Subtract',
                          function: () {
                            context
                                .read<HomeBloc>()
                                .add(const HomeEvent.onSubtract());
                          },
                          elevation: 0,
                          backgroundColor: Colors.white,
                          textStyle: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: Colors.blue),
                          borderColor: Colors.blue,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    PrimaryTextField(
                      controller: state.ansController,
                      hintText: 'Ans',
                      fillColor: Colors.black.withOpacity(0.2),
                      keyboardType: TextInputType.number,
                      textStyle: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
