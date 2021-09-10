import 'package:flutter/material.dart';
import 'package:news_app/screens/overview.dart';
import 'package:news_app/screens/saved_news.dart';
import 'package:news_app/screens/settings.dart';
import 'package:news_app/utils/constants.dart';
import 'package:news_app/components/bottom_navigation_item.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({Key? key}) : super(key: key);

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    OverviewScreen(),
    SavedNewsScreen(),
    SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 35,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: BottomNavigationItem(
              0,
              _selectedIndex,
              Icon(Icons.home_outlined),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: BottomNavigationItem(
              1,
              _selectedIndex,
              Icon(Icons.list),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: BottomNavigationItem(
              2,
              _selectedIndex,
              Icon(Icons.settings_outlined),
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kBluePrimary,
        onTap: _onItemTapped,
      ),
    );
  }
}
