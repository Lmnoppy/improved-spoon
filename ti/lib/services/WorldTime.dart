import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:convert';

class WorldTime {

  DateTime systemTime;
  DateTime formattedSystemTime;
  String targetLocation;
  String targetTimeZone;
  DateTime formattedTargetTime;

  //Should come from user profile/settings
  String homeLocation;
  DateFormat timeFormat;

  WorldTime({@required this.homeLocation, @required this.timeFormat, this.systemTime, this.formattedSystemTime, this.targetLocation, this.targetTimeZone,
    this.formattedTargetTime});

  Future<void> getTime() async {
      this.systemTime = DateTime.now().toLocal();
      this.formattedSystemTime = DateTime.parse(timeFormat.format(systemTime));
      print(formattedSystemTime);
    }
}