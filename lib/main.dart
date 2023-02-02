import 'package:flutter/material.dart';

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
        home: Builder(builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                "Bloc day 1",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            body: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.orange[500],
                    content: const Text(
                      "ini snackbar",
                      style: TextStyle(
                        fontSize: 50.0,
                      ),
                    ),
                  ),
                );
              },
              child: const Text(
                "Snack Bar",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          );
        }));
  }
}

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Bloc day 1",
//           style: TextStyle(
//             fontSize: 20.0,
//           ),
//         ),
//       ),
//       body: SizedBox(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         child: BlocProvider(
//           create: (context) => CounterCubit(),
//           child: BlocBuilder<CounterCubit, StateClass>(
//             builder: (context, state) {
//               return Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Text(
//                     "${state.value}",
//                     style: const TextStyle(
//                       fontSize: 12.0,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 20.0,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       ElevatedButton.icon(
//                         onPressed: () {
//                           context.read<CounterCubit>().decrement();
//                         },
//                         icon: const Icon(
//                           Icons.remove,
//                           size: 24.0,
//                         ),
//                         label: const Text(
//                           "Decrement",
//                           style: TextStyle(
//                             fontSize: 10.0,
//                           ),
//                         ),
//                       ),
//                       const SizedBox(
//                         width: 12.0,
//                       ),
//                       ElevatedButton.icon(
//                         onPressed: () {
//                           context.read<CounterCubit>().increment();
//                         },
//                         icon: const Icon(
//                           Icons.add,
//                           size: 24.0,
//                         ),
//                         label: const Text(
//                           "Increment",
//                           style: TextStyle(
//                             fontSize: 10.0,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text("Day 2 Learning Bloc"),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           padding: const EdgeInsets.all(10.0),
//           child: Column(
//             children: [
//               SizedBox(
//                 width: 100.0,
//                 height: 50.0,
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.green,
//                     // create radius
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(50.0),
//                     ),
//                   ),
//                   onPressed: () {
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       const SnackBar(
//                         content: Text(
//                           "Hallo Ini snackbar",
//                           style: TextStyle(
//                             fontSize: 15.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                   child: const Text(
//                     "snackBar",
//                     style: TextStyle(
//                       fontSize: 15.0,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
