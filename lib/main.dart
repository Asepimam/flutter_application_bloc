import 'package:flutter/material.dart';
import 'package:flutter_application_bloc/bloc/product_bloc.dart';
import 'package:flutter_application_bloc/screen/produts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductBloc()..add(OnProductEventCalled()),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ProductOverView(),
      ),
    );
  }
}
