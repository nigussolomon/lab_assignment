import 'package:equatable/equatable.dart';

abstract class TestEvent extends Equatable {}

class GetDataButtonPressed extends TestEvent {
  GetDataButtonPressed();

  @override
  List<Object> get props => [];
}

class BackButtonPressed extends TestEvent {
  @override
  List<Object> get props => [];
}
