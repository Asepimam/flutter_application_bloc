import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key, required this.name});
  String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hallo $name"),
      ),
    );
  }
}
