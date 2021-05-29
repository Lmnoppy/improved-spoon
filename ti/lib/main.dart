import 'package:flutter/material.dart';
import 'package:ti/pages/ChooseLocation.dart';
import 'package:ti/pages/Home.dart';
import 'package:ti/pages/Loading.dart';

void main() => runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    }
));