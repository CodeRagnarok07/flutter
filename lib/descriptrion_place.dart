import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.descriptionPlace, this.stars);

  @override
  Widget build(BuildContext context) {
    final starts = Container(
      margin: const EdgeInsets.only(top: 320.0, right: 3.0),
      child: const Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );

    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Row(
          children: [
            starts,
            starts,
            starts,
            starts,
          ],
        )
      ],
    );

    final description = Container(
      margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: Text(
        descriptionPlace,
        // ignore: prefer_const_constructors
        style: TextStyle(
            color: Colors.black, fontSize: 16.6, fontWeight: FontWeight.w400),
        textAlign: TextAlign.left,
      ),
    );

    return Column(
      children: <Widget>[titleStars, description],
    );
  }
}
