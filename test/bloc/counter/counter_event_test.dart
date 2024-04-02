import 'package:counter_app_bloc/bloc/counter_event.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterEvent', () {
    group('CounterIncremented', () {
      test('supports value comparison', () {
        expect(CounterIncremented(), isA<CounterIncremented>());
      });
    });

    group('CounterDecremented', () {
      test('supports value comparison', () {
        expect(CounterDecremented(), isA<CounterDecremented>());
      });
    });
  });
}
