import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:init/pages/next.dart';
import '../bloc/test_bloc.dart';
import '../bloc/test_event.dart';
import '../bloc/test_state.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HOME"),
      ),
      body: BlocBuilder<TestBloc, TestState>(builder: (context, state) {
        if (state is TestSuccessState) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '${state.counter_val}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/Next");
                    },
                    child: const Text("SEND COUNTER"))
              ],
            ),
          );
        }
        return Container();
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BlocProvider.of<TestBloc>(context).add(GetDataButtonPressed());
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
