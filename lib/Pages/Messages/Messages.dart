// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../modules/message.module.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  List<messages> items = [
    messages(
        text: 'Mohamed Elgndy',
        subtext: 'jonpraci@gmail.com',
        image: Image.asset('images/avatar.png')),
    messages(
        text: 'Eslam fathi',
        subtext: 'jonpraci@gmail.com',
        image: Image.asset('images/avatar.png')),
    messages(
        text: 'shreef',
        subtext: 'jonpraci@gmail.com',
        image: Image.asset('images/avatar.png')),
    messages(
        text: 'Ahmed Adel',
        subtext: 'jonpraci@gmail.com',
        image: Image.asset('images/avatar.png')),
    messages(
        text: 'Hesham Ali',
        subtext: 'jonpraci@gmail.com',
        image: Image.asset('images/avatar.png')),
    messages(
        text: 'Fouad MO',
        subtext: 'jonpraci@gmail.com',
        image: Image.asset('images/avatar.png')),
    messages(
        text: 'Jon praci',
        subtext: 'jonpraci@gmail.com',
        image: Image.asset('images/avatar.png')),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
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
            ' رسائل ',
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
      height: MediaQuery.of(context).size.width + 140,
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
                  items[index].subtext.toString(),
                  style: TextStyle(
                      color: Colors.grey, fontFamily: 'Schyler', fontSize: 15),
                ),
              ),
            );
          }),
    );
  }
}
