import 'package:flutter/material.dart';
import 'package:flutter_application_bloc/bloc_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bloc day 1",
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: BlocProvider(
          create: (context) => CounterBloc(),
          child: BlocBuilder<CounterBloc, int>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "$state",
                    style: const TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          context.read<CounterBloc>().add(
                                CounterDecrementEvent(),
                              );
                        },
                        icon: const Icon(
                          Icons.remove,
                          size: 24.0,
                        ),
                        label: const Text(
                          "Decrement",
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          context.read<CounterBloc>().add(
                                CounterIncrementEvent(),
                              );
                        },
                        icon: const Icon(
                          Icons.add,
                          size: 24.0,
                        ),
                        label: const Text(
                          "Increment",
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
