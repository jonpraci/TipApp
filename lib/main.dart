// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'Pages/Auth/Login/Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Login());
  }
}
