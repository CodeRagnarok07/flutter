import 'package:flutter/material.dart';
import 'buttom_like.dart';

class CardImg extends StatelessWidget {
  String img = "assets/img/pags/01.jpg";

  CardImg(this.img);

  @override
  Widget build(BuildContext context) {
    final imgcard = Container(
      height: 250.0,
      width: 350.0,
      margin: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(img)),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: const <BoxShadow>[
            BoxShadow(
                blurRadius: 15.0,
                offset: Offset(0.7, 0.07),
                color: Color.fromARGB(255, 0, 0, 0))
          ]),
    );
    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: [imgcard, ButtomLike()],
    );
  }
}
