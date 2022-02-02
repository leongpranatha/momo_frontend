import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled/detail_branch.dart';
import 'package:untitled/detail_device.dart';

import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          subtitle1: TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
          subtitle2: TextStyle(
            color: Colors.grey,
            fontSize: 8,
          ),
        ),
      ),
    );
  }
}
