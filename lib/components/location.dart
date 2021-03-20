import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timein/constants/theme.dart';
import 'package:timer_builder/timer_builder.dart';

class Time extends StatefulWidget {
  @override
  _TimeState createState() => _TimeState();
}

class _TimeState extends State<Time> {

  String getTime() {
    var now = new DateTime.now();
    return new DateFormat("HH:mm:ss").format(now);
  }

  @override
  Widget build(BuildContext context) {
    return TimerBuilder.periodic(Duration(seconds: 1), builder: (context) {
      print("${getTime()}");
      return Text(
        "${getTime()}",
        style: TextStyle(
            color: CustomColors.primaryTextColour,
            fontSize: 64,
            letterSpacing: 2
        ),
      );
    });
  }
}
