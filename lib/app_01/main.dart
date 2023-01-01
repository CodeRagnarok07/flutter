import 'package:flutter/material.dart';
import 'descriptrion_place.dart';
import 'header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String text =
        """Lorem ipsum dolor sit amet consectetur adipisicing elit. Ea culpa harum consequatur, officia dolorem dolor rerum ex fugit? Voluptate, atque suscipit. Ab facere placeat natus

voluptate commodi distinctio officia at? In suscipit optio nihil dolorem reprehenderit aspernatur quae consectetur quia voluptatem reiciendis, voluptatibus, cum debitis laborum. Voluptates dicta nam quae unde, aut suscipit eius exercitationem earum maiores assumenda rem repellendus.""";
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.grey, secondaryHeaderColor: Colors.amber),
        home: Scaffold(
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
          body: Stack(
            children: [
              ListView(
                children: [
                  DescriptionPlace("titulo", text, 4),
                ],
              ),
              Header(),
            ],
          ),
        ));
  }
}
