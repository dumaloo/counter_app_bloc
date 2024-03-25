import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  // Constructor to initialize the state to 0
  CounterCubit() : super(0);

  // Functions to increment and decrement the counter
  void increment() {
    emit(state + 1);
  }

  void decrement() {
    if (state == 0) {
      return;
    }
    emit(state - 1);
  }
}
