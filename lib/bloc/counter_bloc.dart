import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rt_counter/bloc/counter_event.dart';
import 'package:rt_counter/bloc/counter_state.dart';

class NumberBloc extends Bloc<NumberEvent, NumberState> {
  NumberBloc() : super(const NumberState(number: 0)) {
    on<NumberIncrement>(
        ((event, emit) => {

          emit((NumberState(number: event.bath)))
        }));
    on<NumberDeIncrement>(
        ((event, emit) => emit((NumberState(number: state.number - 1)))));
  }
}
