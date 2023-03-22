// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

import '../../Components/Header.dart';

class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: (AppBar(
            backgroundColor: Colors.amber[500],
            actions: [
              Header(
                title: 'محفظه',
              )
            ],
          )),
          body: Container(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: [
                SizedBox(
                  height: 10,
                ),
                _therdPart(),
                SizedBox(
                  height: 10,
                ),
                _firstPart(),
                SizedBox(
                  height: 10,
                ),
                _secondPart(),
              ],
            ),
          )),
    );
  }

  _firstPart() {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.amber[500],
        ),
        // height: 150,
        padding: EdgeInsets.only(top: 20, bottom: 20),
        width: double.infinity,
        child: Column(children: [
          Container(
            child: Text(
              ' الرصيد المتوفر ',
              style: TextStyle(
                  fontFamily: 'Schyler',
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child: Text(
              '0 TIP',
              style: TextStyle(
                  fontFamily: 'Schyler',
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.white,
          ),
          SizedBox(
            height: 20,
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              height: 60,
              child: ElevatedButton.icon(
                  onPressed: () {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 1200,
                          color: Colors.amber[200],
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const Text('For Text'),
                                ElevatedButton(
                                  child: const Text('Close BottomSheet'),
                                  onPressed: () => Navigator.pop(context),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: (RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                          side: BorderSide(color: Colors.white)))),
                  icon: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.amber[400],
                      ),
                      child: Icon(
                        Icons.wallet_outlined,
                        color: Colors.white,
                      )),
                  label: Text(
                    ' اضافه رصيد ',
                    style: TextStyle(
                        fontFamily: 'Schyler',
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          )
        ]),
      ),
    );
  }

  _secondPart() {
    return Card(
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.amber[500],
          ),
          height: 150,
          padding: EdgeInsets.only(top: 10, bottom: 15),
          width: double.infinity,
          child: Image.asset('images/logo.png')),
    );
  }

  _therdPart() {
    return Card(
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.amber[500],
          ),
          height: 150,
          padding: EdgeInsets.only(top: 10, bottom: 15),
          width: double.infinity,
          child: Image.asset(
            'images/bun.png',
            width: double.infinity,
            height: double.infinity,
          )),
    );
  }
}
