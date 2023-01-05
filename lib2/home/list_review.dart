import 'package:flutter/material.dart';

class ListReview extends StatelessWidget {
  const ListReview({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          UserReview("assets/img/people.jpg", "alejo", 2, 2, 3,
              "comentario del usuario"),
          UserReview("assets/img/people.jpg", "rosendo", 5, 2, 3,
              "comentario del usuario")
        ],
      ),
    );
  }
}

class UserReview extends StatelessWidget {
  String imagen;
  String name;
  int reviews;
  int fotos;
  int stars;
  String comentario;

  UserReview(this.imagen, this.name, this.reviews, this.fotos, this.stars,
      this.comentario);

  @override
  Widget build(BuildContext context) {
    // REVIEW
    final imgFoto = Container(
      margin: EdgeInsets.only(
        top: 20.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(imagen))),
    );

    final descriptionReview = Container(
        margin: EdgeInsets.only(top: 10, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name),
            Container(
              margin: EdgeInsets.only(top: 5, bottom: 5),
              child: Row(
                textDirection: TextDirection.ltr,
                children: [
                  Text(
                    "$reviews revieweeew ",
                    style: TextStyle(),
                  ),
                  Text("$fotos fotos "),
                  Text("estrellas"),
                ],
              ),
            ),
            Text(comentario),
          ],
        ));

    final review = Row(
      children: [imgFoto, descriptionReview],
    );

    return review;
  }
}
