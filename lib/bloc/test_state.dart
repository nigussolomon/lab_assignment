import 'package:equatable/equatable.dart';

abstract class TestState extends Equatable {}

class TestInitialState extends TestState {
  @override
  List<Object> get props => [];
}

class TestLoadingState extends TestState {
  @override
  List<Object> get props => [];
}

class TestSuccessState extends TestState {
  int counter_val;
  TestSuccessState(this.counter_val);
  @override
  List<Object> get props => [];
}

class TestFailState extends TestState {
  String message;

  TestFailState(this.message);

  @override
  List<Object> get props => [];
}
