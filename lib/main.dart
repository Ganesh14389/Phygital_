import 'package:flutter/material.dart';
import 'package:food/Login.dart';
import 'package:food/register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => Mylogin(),
      'register': (context) => MyRegister()
    },
  ));
}
