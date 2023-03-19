// ignore_for_file: use_key_in_widget_constructors, depend_on_referenced_packages, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SliderWidget extends StatefulWidget {
  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  final List<String> imgList = [
    'images/buner1.jpg',
    'images/buner1.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _slider(),
      ],
    );
  }

  _slider() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 180,
        autoPlay: true,
        aspectRatio: 2.5,
        enlargeCenterPage: true,
      ),
      items: imgList
          .map((item) => Container(
                // color: Colors.black54,
                margin: const EdgeInsets.only(
                  top: 0,
                  left: 0,
                  right: 0,
                ),
                child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          // width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                            vertical: 0.0,
                            horizontal: 0.0,
                          ),
                          child: Image.asset(
                            item.toString(),
                            width: double.infinity,
                            height: double.infinity,
                          ),
                        )
                      ],
                    )),
              ))
          .toList(),
    );
  }
}
