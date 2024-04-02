import 'package:bloc_test/bloc_test.dart';
import 'package:counter_app_bloc/bloc/counter_bloc.dart';
import 'package:counter_app_bloc/bloc/counter_event.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterBloc', () {
    late CounterBloc counterBloc;

    setUp(() {
      counterBloc = CounterBloc();
    });

    tearDown(() {
      counterBloc.close();
    });

    blocTest(
      'emits [] when nothing is added',
      build: () => counterBloc,
      expect: () => [],
    );

    blocTest(
      'emits [1] when CounterIncremented is added',
      build: () => counterBloc,
      act: (CounterBloc bloc) => bloc.add(CounterIncremented()),
      expect: () => [1],
    );

    blocTest(
      'emits [0] when CounterDecremented is added from 1',
      build: () => counterBloc,
      seed: () => 1,
      act: (CounterBloc bloc) => bloc.add(CounterDecremented()),
      expect: () => [0],
    );

    blocTest(
      'emits [] when CounterDecremented is added from 0',
      build: () => counterBloc,
      act: (CounterBloc bloc) => bloc.add(CounterDecremented()),
      expect: () => [],
    );
  });
}
