import 'package:flutter/material.dart';

class ButtonNavigate extends StatelessWidget {
  const ButtonNavigate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Navegando'),
          ),
        );
      },
      child: Container(
        padding:
            const EdgeInsets.only(top: 15.0, bottom: 15.0, left: 40, right: 40),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
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
        child: const Text(
          "navegacion",
          style: TextStyle(
              color: Colors.white,
              fontFamily: "Lato",
              fontSize: 15.0,
              fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
