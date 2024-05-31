import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rt_counter/bloc/counter_state.dart';
import 'package:rt_counter/cubit/counter_state.dart';

class NumberCubit extends Cubit<CounterState> {
  NumberCubit() : super(CounterState(number: 0));

  void increment() {
    final num = state.number + 1;
    final updatedValue = CounterState(number: num);
    emit(updatedValue);
  }

  void decrement() {
    final num = state.number - 1;
    final updatedValue = CounterState(number: num);
    emit(updatedValue);
  }
}
