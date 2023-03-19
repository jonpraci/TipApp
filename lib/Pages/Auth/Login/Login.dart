// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:newtipsapp/Pages/Layout/Layout.dart';

import '../Register/Register.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _logoWidget(),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: _createAccount(),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      )),
    );
  }

  _logoWidget() {
    return Container(
        decoration: BoxDecoration(
            color: Color.fromRGBO(255, 218, 33, 1),
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(60),
                bottomLeft: Radius.circular(60))),
        width: double.infinity,
        child: Column(
          children: [
            Container(
              color: Color.fromRGBO(255, 218, 33, 1),
              padding: EdgeInsets.only(top: 50, bottom: 50),
              width: double.infinity,
              child: Image.asset(
                'images/logo.png',
                width: 100,
                height: 100,
              ),
            ),
            _fieldsCard(),
          ],
        ));
  }

  _fieldsCard() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60),
              bottomRight: Radius.circular(60),
              bottomLeft: Radius.circular(60),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                offset: Offset(.1, .1), // Shadow position
              ),
            ],
            color: Colors.white),
        // height: 350,
        width: double.infinity,
        child: _formFields());
  }

  _formFields() {
    return Column(children: [
      Container(
        padding: EdgeInsets.only(top: 15, bottom: 15),
        child: Text(" تسجيل دخول ",
            style: TextStyle(
                fontFamily: 'Schyler',
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 16)),
      ),
      Container(
        padding: EdgeInsets.only(top: 20, bottom: 30, left: 35, right: 35),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.phone,
                  size: 16,
                  color: Color.fromARGB(39, 167, 87, 1),
                ),
                Text(
                  ' رقم الجوال ',
                  style: TextStyle(fontFamily: 'Schyler', fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            _userNameField(),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.lock,
                  size: 16,
                  color: Color.fromARGB(39, 167, 87, 1),
                ),
                Text(
                  ' كلمة المرور ',
                  style: TextStyle(fontFamily: 'Schyler', fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            _passwordField(),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              child: _havenotaccount(),
            ),
            SizedBox(
              height: 10,
            ),
            _loginButton()
          ],
        ),
      )
    ]);
  }

  _userNameField() {
    return Container(
      height: 50,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: TextFormField(
          cursorHeight: 30,
          cursorColor: Color.fromRGBO(39, 167, 87, 1),
          textAlign: TextAlign.end,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: "مثال ( *******05 )",
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            hintStyle: TextStyle(color: Colors.grey, letterSpacing: 1.2),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  const BorderSide(color: Color.fromARGB(255, 0, 182, 109)),
            ),
          ),
          validator: (value) {
            if (value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)) {
              return "الأيميل غير صحيح";
            } else {
              return null;
            }
          },
        ),
      ),
    );
  }

  _passwordField() {
    return Container(
      height: 50,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: TextFormField(
          cursorHeight: 30,
          cursorColor: Color.fromRGBO(39, 167, 87, 1),
          textAlign: TextAlign.end,
          obscureText: true,
          keyboardType: TextInputType.visiblePassword,
          decoration: InputDecoration(
            hintText: "كلمه المرور",
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Color.fromARGB(255, 156, 152, 152)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  const BorderSide(color: Color.fromARGB(255, 0, 182, 109)),
            ),
          ),
          validator: (value) {
            if (value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)) {
              return "كلمه المرور غير صحيحه";
            } else {
              return null;
            }
          },
        ),
      ),
    );
  }

  _havenotaccount() {
    return Text(
      ' نسيت كلمه المرور ؟',
      textAlign: TextAlign.start,
      style: TextStyle(
          fontFamily: 'Schyler',
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.black87),
    );
  }

  _loginButton() {
    return Container(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => Layout())),
        child: Text(
          "تسجيل الدخول",
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

  _createAccount() {
    return Container(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => Register())),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              " ليس لديك حساب ؟  ",
              style: TextStyle(
                  fontSize: 15, fontFamily: 'Schyler', color: Colors.black38),
            ),
            Text(
              "   إنشاء حساب ",
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Schyler',
                  color: Colors.yellow[700]),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
          side: BorderSide(
            color: Colors.yellow,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
