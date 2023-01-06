import 'package:flutter/material.dart';
import 'package:app1/components/gradient_back.dart';
import 'package:app1/Place/ui/widgets/card_image_list.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[GradientBack("Bienvenido", 240), CardImageList()],
    );
  }
}
