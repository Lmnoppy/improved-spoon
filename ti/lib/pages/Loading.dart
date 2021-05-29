import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:ti/services/WorldTime.dart';

class Loading extends StatefulWidget {
  @override
  LoadingState createState() => LoadingState();
}

class LoadingState extends State<Loading> {

  void setUpWorldTime() async{
    WorldTime instance = WorldTime(homeLocation: 'Glasgow', timeFormat: DateFormat('yyyy-MM-dd').add_Hms(),
        targetLocation: 'Europe/Berlin'
    );
    await instance.getTime();
    print(instance.formattedSystemTime);
    print('Format time testing');
    print('----------------------------------------------');
    print(instance.formattedSystemTime.year);
    print(instance.formattedSystemTime.month);
    print(instance.formattedSystemTime.day);
    print(instance.formattedSystemTime.hour);
    print(instance.formattedSystemTime.minute);
    print(instance.formattedSystemTime.second);
    print(instance.formattedSystemTime.millisecond);
    print(instance.formattedSystemTime.timeZoneName);
    print(instance.formattedSystemTime.timeZoneOffset);
    print('----------------------------------------------');
    print('Conversion testing');
    print('----------------------------------------------');
    print("Convert current time: " + instance.formattedSystemTime.toString() + " , to " + instance.targetLocation);
  }

  @override
  void initState() {
    super.initState();
    setUpWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('loading screen'),
    );
  }
}