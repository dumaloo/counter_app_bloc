import 'package:counter_app_bloc/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitHomeScreen extends StatefulWidget {
  const CubitHomeScreen({super.key});

  @override
  State<CubitHomeScreen> createState() => _CubitHomeScreenState();
}

class _CubitHomeScreenState extends State<CubitHomeScreen> {
  @override
  Widget build(BuildContext context) {
    final counterCubit = CounterCubit();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          'Cubit Home Screen',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterCubit, int>(
              bloc: counterCubit,
              builder: (context, counter) {
                return Text(
                  '$counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            const SizedBox(height: 10),
            FloatingActionButton(
              onPressed: () {
                counterCubit.increment();
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 10),
            FloatingActionButton(
              onPressed: () {
                counterCubit.decrement();
              },
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
