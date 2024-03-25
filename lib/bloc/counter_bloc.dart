import 'package:counter_app_bloc/bloc/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  // Constructor to initialize the state to 0
  CounterBloc() : super(0) {
    // Listen for CounterIncremented events and increment the state
    on<CounterIncremented>((event, emit) {
      emit(state + 1);
    });

    // Listen for CounterDecremented events and decrement the state
    on<CounterDecremented>((event, emit) {
      if (state == 0) {
        return;
      }
      emit(state - 1);
    });
  }
}
