import 'package:flutter/material.dart';
import 'list_review.dart';
import 'button_navigate.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.descriptionPlace, this.stars);

  @override
  Widget build(BuildContext context) {
    // CONTENT
    final starts = Container(
      margin: const EdgeInsets.only(top: 0.0, left: 3.0),
      child: const Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );

    final titleStars = Column(
      children: <Widget>[
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 0.0, right: 10.0),
              child: Text(
                namePlace,
                style: const TextStyle(
                  fontFamily: "Lato",
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
        ),
      ],
    );

    final description = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
      ),
      child: Text(
        descriptionPlace,
        // ignore: prefer_const_constructors
        style: TextStyle(
            fontFamily: "Lato",
            color: Colors.black,
            fontSize: 16.6,
            fontWeight: FontWeight.w400),
        textAlign: TextAlign.left,
      ),
    );

    return Container(
      margin: const EdgeInsets.only(top: 280.0, left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          titleStars,
          description,
          ButtonNavigate(),
          new ListReview(),
        ],
      ),
    );
  }
}
