import 'package:bloc/bloc.dart';

part 'counter_state.dart';

// Logics of the State of Counter Cubit (Events)

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(counterValue: 0));

  void increment() => emit(// Increment State
      CounterState(counterValue: state.counterValue + 1, wasIncremented: true));

  void decrement() => emit(CounterState(
      // Decrement State
      counterValue: state.counterValue - 1,
      wasIncremented: false));
}
