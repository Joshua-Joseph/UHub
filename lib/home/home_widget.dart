import 'package:flutter/material.dart';
import 'profile.dart';
import 'home_page.dart';
import 'filter.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [HomePage(), Filter(), Profile()];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: (Text(
          'U HUB',
          style: TextStyle(fontSize: height * 0.04, color: HexColor('#0e5f3f')),
        ))),
        backgroundColor: HexColor('#daae00'),
      ),
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ('Home'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.filter_alt_rounded),
            label: ('Filter'),
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.person), label: ('Profile'))
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
