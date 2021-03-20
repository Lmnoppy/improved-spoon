import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timein/constants/theme.dart';
import 'package:timer_builder/timer_builder.dart';

class Date extends StatefulWidget {
  @override
  _DateState createState() => _DateState();
}

class _DateState extends State<Date> {

  String getDate() {
    var now = new DateTime.now();
    return new DateFormat("yyyy-MM-dd").format(now);
  }

  @override
  Widget build(BuildContext context) {
    return TimerBuilder.periodic(Duration(seconds: 1), builder: (context) {
      print("${getDate()}");
      return Text(
        "${getDate()}",
        style: TextStyle(
            color: CustomColors.primaryTextColour,
            fontSize: 64,
            letterSpacing: 2
        ),
      );
    });
  }
}
