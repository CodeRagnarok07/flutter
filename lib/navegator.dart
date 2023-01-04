import 'package:app1/acount/main.dart';
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
    AcountPage(),
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
