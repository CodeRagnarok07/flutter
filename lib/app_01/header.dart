import 'package:flutter/material.dart';
import 'list_imgs.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gradient = Container(
      height: 220.0,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        stops: [0.001, 5],
        tileMode: TileMode.clamp,
        begin: FractionalOffset(1, 0.2),
        end: FractionalOffset(0.1, 0.7),
        colors: [
          Color.fromARGB(255, 0, 170, 255),
          Color.fromARGB(255, 0, 72, 255),
        ],
      )),
      alignment: const Alignment(-0.8, -0.9),
      child: const Text(
        "title",
        style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontFamily: "Lato",
            fontWeight: FontWeight.bold),
      ),
    );

    return Stack(
      children: [
        gradient,
        const ListImgs(),
      ],
    );
  }
}
