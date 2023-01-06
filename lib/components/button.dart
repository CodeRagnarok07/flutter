import 'package:flutter/material.dart';

class ButtonGradient extends StatefulWidget {
  String text;
  VoidCallback onPressed;
  double width = 0.0;
  double height = 0.0;
  List<Color> colorsList = [
    Color.fromARGB(255, 73, 196, 128),
    Color.fromARGB(255, 76, 129, 209)
  ];
  ButtonGradient({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.width,
    required this.height,
    required this.colorsList,
  }) : super(key: key);

  @override
  _ButtonGradientState createState() => _ButtonGradientState();
}

class _ButtonGradientState extends State<ButtonGradient> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        margin: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            gradient: LinearGradient(
                colors: widget.colorsList,
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp)),
        child: Center(
          child: Text(
            widget.text,
            style: const TextStyle(
                fontSize: 18.0, fontFamily: "Lato", color: Colors.white),
          ),
        ),
      ),
    );
  }
}
