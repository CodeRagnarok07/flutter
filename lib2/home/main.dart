import 'package:flutter/material.dart';

import 'descriptrion_place.dart';
import 'header.dart';

class HomePage extends StatelessWidget {
  String text =
      """Lorem ipsum dolor sit amet consectetur adipisicing elit. Ea culpa harum consequatur, officia dolorem dolor rerum ex fugit? Voluptate, atque suscipit. Ab facere placeat natus

voluptate commodi distinctio officia at? In suscipit optio nihil dolorem reprehenderit aspernatur quae consectetur quia voluptatem reiciendis, voluptatibus, cum debitis laborum. Voluptates dicta nam quae unde, aut suscipit eius exercitationem earum maiores assumenda rem repellendus.""";

  HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            DescriptionPlace("titulo", text, 4),
          ],
        ),
        const Header(),
      ],
    );
  }
}
