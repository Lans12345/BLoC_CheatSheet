import 'package:bloc_demo/business_logic/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Counter App using BLoC'),
          centerTitle: true,
        ),
        body: BlocConsumer<CounterCubit, CounterState>(
            // Bloc Consumer - has builder (UI thats being rebuild after the state is changed), listener (Logics to perform when the state changes)
            builder: ((context, state) {
          return Center(
              child: Text(
            state.counterValue.toString(),
            style: const TextStyle(fontSize: 28),
          ));
        }), listener: ((context, state) {
          if (state.wasIncremented == true) {
            print('value was incremented');
          } else {
            print('value was decremented');
          }
        })),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: (() {
                BlocProvider.of<CounterCubit>(context)
                    .increment(); // Accessing the increment state of Counter Cubit
              }),
              child: const Text('Add'),
            ),
            const SizedBox(
              height: 20,
            ),
            FloatingActionButton(
              onPressed: (() {
                BlocProvider.of<CounterCubit>(context)
                    .decrement(); // Accessing the decrement state of Counter Cubit
              }),
              child: const Text('Minus'),
            ),
          ],
        ));
  }
}
