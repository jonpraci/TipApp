// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../Components/Header.dart';
import '../../modules/depo.module.dart';

class Evaleuation extends StatefulWidget {
  @override
  _EvaleuationState createState() => _EvaleuationState();
}

class _EvaleuationState extends State<Evaleuation> {
  List<Depo> items = [
    Depo(
        text: 'Mohamed Elgndy',
        sendtext: 'jonpraci@gmail.com',
        image: Image.asset('images/avatar.png'),
        depos: 'jhjkhhj',
        date: ',mwlkjhkgjygj '),
    Depo(
        text: 'Eslam fathi',
        sendtext: 'jonpraci@gmail.com',
        image: Image.asset('images/avatar.png'),
        depos: 'jhjkhhj',
        date: ',mwlkjhkgjygj '),
    Depo(
        text: 'shreef',
        sendtext: 'jonpraci@gmail.com',
        image: Image.asset('images/avatar.png'),
        depos: 'jhjkhhj',
        date: ',mwlkjhkgjygj '),
    Depo(
        text: 'Ahmed Adel',
        sendtext: 'jonpraci@gmail.com',
        image: Image.asset('images/avatar.png'),
        depos: 'jhjkhhj',
        date: ',mwlkjhkgjygj '),
    Depo(
        text: 'Hesham Ali',
        sendtext: 'jonpraci@gmail.com',
        image: Image.asset('images/avatar.png'),
        depos: 'jhjkhhj',
        date: ',mwlkjhkgjygj '),
    Depo(
        text: 'Fouad MO',
        sendtext: 'jonpraci@gmail.com',
        image: Image.asset('images/avatar.png'),
        depos: 'jhjkhhj',
        date: ',mwlkjhkgjygj '),
    Depo(
        text: 'Jon ',
        sendtext: 'jonpraci@gmail.com',
        image: Image.asset('images/avatar.png'),
        depos: 'jhjkhhj',
        date: ',mwlkjhkgjygj '),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        backgroundColor: Colors.amber[500],
        actions: [
          Header(
            title: 'التقييم',
          )
        ],
      )),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          children: [_messageHeader(), _messagesItem()],
        ),
      ),
    );
  }

  _messageHeader() {
    return Container(
      width: double.infinity,
      height: 120,
      color: Colors.grey[100],
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.message_outlined,
            size: 30,
            color: Colors.yellow[700],
          ),
          Text(
            ' التقييم ',
            style: TextStyle(
                fontFamily: 'Schyler',
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                fontSize: 30),
          ),
        ],
      ),
    );
  }

  _messagesItem() {
    return Container(
      height: MediaQuery.of(context).size.width + 100,
      child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                leading: items[index].image,
                title: Text(
                  items[index].text.toString(),
                  style: TextStyle(
                      color: Colors.black54,
                      fontFamily: 'Schyler',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'items[index].subtext.toString()',
                  style: TextStyle(
                      color: Colors.grey, fontFamily: 'Schyler', fontSize: 15),
                ),
              ),
            );
          }),
    );
  }
}
