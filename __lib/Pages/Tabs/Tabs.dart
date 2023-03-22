// ignore_for_file: prefer_final_fields, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:newtipsapp/Pages/Home/Home.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _selectedIndex = 2;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 2: Home',
      style: optionStyle,
    ),
    Home(),
    Text(
      'Index 4: Business',
      style: optionStyle,
    ),
    Text(
      'Index 5: School',
      style: optionStyle,
    ),
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
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.white60,
            icon: Icon(Icons.settings_outlined),
            label: 'الاعدادات',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white60,
            icon: Icon(Icons.message_outlined),
            label: 'رسائل',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white60,
            icon: Icon(Icons.home_outlined),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white60,
            icon: Icon(Icons.wallet_outlined),
            label: 'محفظه',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white60,
            icon: Icon(Icons.event_available_outlined),
            label: 'التقييم',
          ),
        ],
        currentIndex: _selectedIndex,

        // selectedItemColor: Colors.amber[800],
        // fixedColor: Colors.red,
        onTap: _onItemTapped,
        selectedItemColor: Colors.yellow[700],
        unselectedItemColor: Colors.black,
        elevation: 10,

        selectedLabelStyle:
            TextStyle(color: Colors.black, fontSize: 17, fontFamily: 'Schyler'),
        showUnselectedLabels: true,
        unselectedLabelStyle: TextStyle(fontFamily: 'Schyler'),
      ),
    );
  }
}
