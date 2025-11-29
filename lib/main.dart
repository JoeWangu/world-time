import 'package:flutter/material.dart';
import 'package:flapp/pages/home.dart';
import 'package:flapp/pages/choose_location.dart';
import 'package:flapp/pages/loading.dart';

void main() {
  runApp(
    MaterialApp(
      // home: Home(),
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
      },
    ),
  );
}
