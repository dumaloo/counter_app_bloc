import 'package:counter_app_bloc/bloc/counter_bloc.dart';
import 'package:counter_app_bloc/bloc/counter_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocHomeScreen extends StatefulWidget {
  const BlocHomeScreen({super.key});

  @override
  State<BlocHomeScreen> createState() => _BlocHomeScreenState();
}

class _BlocHomeScreenState extends State<BlocHomeScreen> {
  final counterBloc = CounterBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          'Bloc Home Screen',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterBloc, int>(
              bloc: counterBloc,
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
                counterBloc.add(CounterIncremented());
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 10),
            FloatingActionButton(
              onPressed: () {
                counterBloc.add(CounterDecremented());
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
