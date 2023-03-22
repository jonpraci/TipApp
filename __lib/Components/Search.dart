// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        // color: Colors.red,
        // padding: EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                width: 50,
                height: 50,
                color: Colors.yellow[600],
                child: Icon(Icons.qr_code)),
            Container(
              width: 270,
              height: 50,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextField(
                  onChanged: (value) {
                    //  searchData(st = value.trim().toLowerCase());
                    // Method For Searching
                  },
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    hintText: "بحث عن مستفيد",
                    hintStyle:
                        TextStyle(fontFamily: 'Schyler', color: Colors.black26),
                    prefixIcon: Icon(Icons.search),
                    prefixIconColor: Colors.grey,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(84, 84, 84, 1)),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
