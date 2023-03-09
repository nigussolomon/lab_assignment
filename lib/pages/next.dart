import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/test_bloc.dart';
import '../bloc/test_state.dart';

class NEXT extends StatefulWidget {
  const NEXT({super.key});

  @override
  State<NEXT> createState() => _NEXTState();
}

class _NEXTState extends State<NEXT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NEXT"),
      ),
      body: BlocBuilder<TestBloc, TestState>(builder: (context, state) {
        if (state is TestSuccessState) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "THE NUMBER IS ${state.counter_val}",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        }
        return Container();
      }), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
