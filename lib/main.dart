import 'package:flutter/material.dart';
import 'package:timein/pages/chooseLocation.dart';
import 'package:timein/pages/home.dart';
import 'package:timein/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    title: 'Time In',
    initialRoute: '/home',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
      '/alarm': (context) => Home(),
      '/stopwatch': (context) => ChooseLocation(),
      '/timer': (context) => ChooseLocation(),
      '/settings': (context) => ChooseLocation(),
    },
  )
  );
}