import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:init/pages/next.dart';
import 'bloc/test_bloc.dart';
import 'bloc/test_event.dart';
import 'bloc/test_state.dart';
import 'pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TestBloc(),
      child: MaterialApp(
        initialRoute: "/",
        routes: {
          "/": (context) => const MyHomePage(),
          "/Next": (context) => const NEXT()
        },
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}
