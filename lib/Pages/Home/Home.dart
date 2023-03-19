// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../Components/MinTipFieldWidget.dart';
import '../../Components/Search.dart';
import '../../Components/Slider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SliderWidget(),
        SizedBox(
          height: 1,
        ),
        Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(children: [
            SearchWidget(),
            SizedBox(
              height: 10,
            ),
            MinTipFieldWidget()
          ]),
        )
      ],
    );
  }
}
