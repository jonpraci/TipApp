// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';

class MinTipFieldWidget extends StatefulWidget {
  @override
  _MinTipFieldWidgetState createState() => _MinTipFieldWidgetState();
}

class _MinTipFieldWidgetState extends State<MinTipFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 5, bottom: 15),
            width: double.infinity,
            color: Colors.yellow[600],
            child: Column(children: [
              Container(
                padding: EdgeInsets.all(15),
                child: Image.asset(
                  'images/logo.png',
                  width: 47,
                  height: 47,
                ),
              ),
              SizedBox(
                height: 0,
              ),
              Container(
                child: _minTipField(),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text(
                  ' الحد الأدنى 2 TIP ',
                  style: TextStyle(
                      fontFamily: 'Schyler',
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              )
            ]),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: _fieldMessage(),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: _charge(),
          ),
          SizedBox(
            height: 10,
          ),
          _loginButton(),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }

  _minTipField() {
    return Container(
      height: 45,
      padding: EdgeInsets.only(left: 30, right: 30),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: TextFormField(
          cursorHeight: 30,
          cursorColor: Color.fromRGBO(39, 167, 87, 1),
          textAlign: TextAlign.end,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: "TIP:0.00",
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            hintStyle: TextStyle(color: Colors.grey, letterSpacing: 1.2),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white70),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.white70),
            ),
          ),
          // validator: (value) {
          //   if (value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)) {
          //     return "الأيميل غير صحيح";
          //   } else {
          //     return null;
          //   }
          // },
        ),
      ),
    );
  }

  _fieldMessage() {
    return Container(
      height: 50,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: TextFormField(
          maxLines: 15,
          cursorHeight: 30,
          cursorColor: Color.fromRGBO(39, 167, 87, 1),
          textAlign: TextAlign.end,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: "... آكتب الرساله  ",
            filled: true, //<-- SEE HERE
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            hintStyle: TextStyle(color: Colors.grey, letterSpacing: 1.2),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
        ),
      ),
    );
  }

  _charge() {
    return Card(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ListTile(
          title: Text("الرصيد"),
          trailing: Container(
            width: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('0'),
                SizedBox(
                  width: 5,
                ),
                Image.asset(
                  'images/logo.png',
                  width: 30,
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _loginButton() {
    return Container(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          " ارسال",
          style: TextStyle(
              fontSize: 15, fontFamily: 'Schyler', color: Colors.black),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.yellow[600],
          elevation: 0,
          side: BorderSide(
            color: Colors.transparent,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
