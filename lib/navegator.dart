import 'package:flutter/material.dart';

import 'package:app1/App1/main.dart';
import 'package:app1/Place/ui/screens/home_trips.dart';
import 'package:app1/Place/ui/screens/search_trips.dart';
import 'package:app1/User/ui/screens/profile_trips.dart';
import 'App1/main.dart';

class Navegator extends StatefulWidget {
  const Navegator({Key? key}) : super(key: key);

  @override
  _NavegatorState createState() => _NavegatorState();
}

class _NavegatorState extends State<Navegator> {
  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    ProfileTrips(),
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final label = BottomNavigationBarItem(
      icon: Icon(Icons.label),
      label: 'label',
    );
    final home = BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'home',
    );

    final search = BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: 'search',
    );

    final account_circle = BottomNavigationBarItem(
      icon: Icon(Icons.account_circle),
      label: 'account_circle',
    );

    return Scaffold(
        body: widgetsChildren[indexTap],
        bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              onTap: onTapTapped,
              currentIndex: indexTap,
              items: [
                home,
                search,
                label,
                account_circle,
              ]),
        ));
  }
}
