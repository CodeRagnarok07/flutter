import 'package:flutter/material.dart';

class ButtomLike extends StatefulWidget {
  @override
  State<ButtomLike> createState() => _ButtomLikeState();
}

class _ButtomLikeState extends State<ButtomLike> {
  bool isFavorited = true;

  void _toggleFavorite() {
    setState(() {
      if (isFavorited) {
        isFavorited = false;
      } else {
        isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
          color: Colors.green[500],
          borderRadius: BorderRadius.all(Radius.circular(30.0))),
      child: IconButton(
        padding: const EdgeInsets.all(0),
        alignment: Alignment.center,
        icon: (isFavorited
            ? const Icon(Icons.favorite_border)
            : const Icon(Icons
                .favorite)), //               : const Icon(Icons.star_border)),
        color: Colors.white,
        onPressed: _toggleFavorite,
      ),
    );
  }
}
