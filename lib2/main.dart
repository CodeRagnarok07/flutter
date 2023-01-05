import 'package:flutter/material.dart';
import 'navegator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.grey, secondaryHeaderColor: Colors.amber),
        home: Navegator()
        // appBar: AppBar(
        //   centerTitle: true,
        //   title: const Text(
        //     "soy el titulo",
        //     textAlign: TextAlign.center,
        //   ),
        // ),
        // body: SingleChildScrollView(
        //   scrollDirection: Axis.vertical,
        //   child: Stack(
        //     children: [
        //       DescriptionPlace("titulo", text, 4),
        //       Header(),
        //     ],
        //   ),
        // ))

        );
  }
}
