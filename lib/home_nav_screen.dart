import 'package:counter_app_bloc/bloc/bloc_home_screen.dart';
import 'package:counter_app_bloc/cubit/cubit_home_screen.dart';
import 'package:flutter/material.dart';

class HomeNavScreen extends StatefulWidget {
  const HomeNavScreen({super.key});

  @override
  State<HomeNavScreen> createState() => _HomeNavScreenState();
}

class _HomeNavScreenState extends State<HomeNavScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Home Navigation Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CubitHomeScreen(),
                  ),
                );
              },
              child: const Text('Cubit Home Screen'),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BlocHomeScreen(),
                  ),
                );
              },
              child: const Text('Bloc Home Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
