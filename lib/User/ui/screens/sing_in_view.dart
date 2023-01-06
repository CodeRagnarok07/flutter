import 'package:flutter/material.dart';

import 'package:app1/components/gradient_back.dart';
import 'package:app1/components/button.dart';

class SingInView extends StatefulWidget {
  const SingInView();

  @override
  _SingInViewState createState() => _SingInViewState();
}

class _SingInViewState extends State<SingInView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        GradientBack("", MediaQuery.of(context).size.height),
        Column(
          children: [
            Text(
              "hola mundo registrate aqui",
              style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 37,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            ButtonGradient(
              text: "Login whit google",
              onPressed: () {},
              width: 300,
              height: 40,
              colorsList: [
                Color.fromARGB(255, 73, 196, 128),
                Color.fromARGB(255, 76, 129, 209)
              ],
            )
          ],
        )
      ],
    );
  }
}
