import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rt_counter/bloc/counter_bloc.dart';
import 'package:rt_counter/bloc/counter_event.dart';
import 'package:rt_counter/bloc/counter_state.dart';
import 'package:rt_counter/cubit/counter_cubit.dart';
import 'package:rt_counter/cubit/counter_state.dart';

class PrincipalPage extends StatelessWidget {
  const PrincipalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            BlocBuilder<NumberCubit, CounterState>(builder: (context, state) {
          return Text(
            "${state.number}",
            style: TextStyle(fontSize: 20),
          );
        }),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<NumberCubit>(context).increment();
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 15,
          ),
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<NumberCubit>(context).decrement();
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
