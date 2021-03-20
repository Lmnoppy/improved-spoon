import 'package:flutter/material.dart';

import 'package:timein/components/date.dart';
import 'package:timein/components/time.dart';
import 'package:timein/constants/theme.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.primaryBackgroundColour,
        body: SafeArea(
            child: Row(children: <Widget>[
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                      onPressed:() {},
                      child: Column(
                        children: [
                          FlutterLogo(),
                          Text("Alarm", style: TextStyle(color: Colors.white, fontSize: 14,)),
                        ],
                      ),
                    ),
                  ],
              ),
              VerticalDivider(color: CustomColors.dividerColor, width: 1,),
              Column(children: <Widget>[
                Row(children: <Widget>[
                  Date(),
                  SizedBox(height: 24,),
                ]),
                Row(children: <Widget>[
                  Time(),
                  Text("Location", style: TextStyle(color: Colors.white, fontSize: 12, letterSpacing: 2)),
                ]),
          ]),
        ])));
  }
}
