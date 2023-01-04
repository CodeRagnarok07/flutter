import 'package:flutter/material.dart';

import 'home/main.dart';
import 'searsh/main.dart';
import 'app_00/main.dart';

class Navegator extends StatefulWidget {
  const Navegator({Key? key}) : super(key: key);

  @override
  _NavegatorState createState() => _NavegatorState();
}

class _NavegatorState extends State<Navegator> {
  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    HomePage(),
    SearshPage(),
    MyApp00(),
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final home = BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'home',
    );

    final search = BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: 'search',
    );
    final label = BottomNavigationBarItem(
      icon: Icon(Icons.label),
      label: 'label',
    );

    return Scaffold(
        body: widgetsChildren[indexTap],
        bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
          child: BottomNavigationBar(
              onTap: onTapTapped,
              currentIndex: indexTap,
              items: [
                home,
                search,
                label,
              ]),
        ));
  }
}
