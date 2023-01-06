import 'package:flutter/material.dart';
import 'package:app1/User/ui/screens/profile_header.dart';
import 'package:app1/User/ui/widgets/profile_places_list.dart';
import 'package:app1/User/ui/widgets/profile_background.dart';

import 'package:app1/User/ui/screens/sing_in_view.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    /*return Container(
      color: Colors.indigo,
    );*/
    List<Widget> view = [ProfileHeader(), ProfilePlacesList()];

    return Stack(
      children: <Widget>[
        ProfileBackground(),
        ListView(
          children: [SingInView()],
        ),
      ],
    );
  }
}
