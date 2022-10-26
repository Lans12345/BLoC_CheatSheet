part of 'counter_cubit.dart';

// State of the Cubits - where the values were declared
class CounterState {
  int counterValue;
  bool? wasIncremented;

  CounterState({
    required this.counterValue,
    this.wasIncremented,
  });
}
