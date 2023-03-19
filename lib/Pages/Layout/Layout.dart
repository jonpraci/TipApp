// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../Components/Header.dart';
import '../Tabs/Tabs.dart';

class Layout extends StatefulWidget {
  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            Header(
              title: 'محمد كريم',
            )
          ],
        ),
        body: Tabs(),
      ),
    );
  }
}
