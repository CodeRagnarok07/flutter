import 'package:flutter/material.dart';
import 'card_img.dart';

import 'scroll_behavior.dart';

class ListImgs extends StatelessWidget {
  const ListImgs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list = Container(
        margin: const EdgeInsets.only(top: 50, left: 0),
        child: ScrollConfiguration(
          behavior: MyCustomScrollBehavior(),
          child: ListView(
              padding: EdgeInsets.only(top: 20, left: 0, right: 40, bottom: 20),
              scrollDirection: Axis.horizontal,
              children: [
                CardImg("assets/img/pags/01.jpg"),
                CardImg("assets/img/pags/02.jpg"),
                CardImg("assets/img/pags/03.jpg"),
                CardImg("assets/img/pags/04.jpg"),
                CardImg("assets/img/pags/01.jpg"),
                CardImg("assets/img/pags/01.jpg"),
                CardImg("assets/img/pags/01.jpg"),
              ]),
        ));

    return Container(
        // margin: EdgeInsets.only(top: 80.0, left: 20.0),
        height: 280.0,
        child: list);
  }
}
