import 'package:flutter/material.dart';
import 'package:app1/Place/ui/widgets/card_image.dart';
import 'package:app1/components/scroll_behavior.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        height: 350.0,
        child: ScrollConfiguration(
          behavior: MyCustomScrollBehavior(),
          child: ListView(
              padding: EdgeInsets.only(top: 20, left: 0, right: 40, bottom: 20),
              scrollDirection: Axis.horizontal,
              children: [
                CardImage("assets/img/beach_palm.jpeg"),
                CardImage("assets/img/mountain.jpeg"),
                CardImage("assets/img/mountain_stars.jpeg"),
                CardImage("assets/img/river.jpeg"),
                CardImage("assets/img/sunset.jpeg"),
              ]),
        ));
  }
}
