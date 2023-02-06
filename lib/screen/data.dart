import 'package:flutter/material.dart';
import 'package:flutter_application_bloc/bloc/data_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DataView extends StatefulWidget {
  const DataView({Key? key}) : super(key: key);

  @override
  State<DataView> createState() => _DataViewState();
}

class _DataViewState extends State<DataView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day 4 learn Bloc"),
      ),
      body: BlocListener<DataBloc, DataState>(
        listener: (context, state) {
          if (state is DataLoaded) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.value),
              ),
            );
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondPage()),
            );
          }
        },
        child: BlocBuilder<DataBloc, DataState>(
          builder: (context, state) {
            if (state is DataLoading) {
              return const Center(
                child: RefreshProgressIndicator(),
              );
            }
            if (state is DataLoaded) {
              return Center(
                child: Text(state.value),
              );
            }
            return const Center(
              child: Text("Data Initial"),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh),
        onPressed: () {
          context.read<DataBloc>().add(OnCalleDataEvent());
        },
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Secon Page"),
      ),
      body: const Center(
        child: Text("Second Page"),
      ),
    );
  }
}
