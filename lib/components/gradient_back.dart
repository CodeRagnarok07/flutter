import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  String title;
  double height;

  GradientBack(this.title, this.height);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Stack(
      children: [
        Container(
          height: height,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            stops: [0.001, 5],
            tileMode: TileMode.clamp,
            begin: FractionalOffset(1, 0.2),
            end: FractionalOffset(0.1, 0.7),
            colors: [Color(0xFF4268D3), Color(0xFF584CD1)],
          )),
          alignment: const Alignment(-0.9, -0.6),
        ),
        Container(
            margin: const EdgeInsets.only(top: 30.0, left: 20.0),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.bold),
              ),
            ))
      ],
    );
  }
}
