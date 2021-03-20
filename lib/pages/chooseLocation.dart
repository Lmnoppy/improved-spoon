import 'package:flutter/material.dart';
import 'package:timein/constants/theme.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  @override
  void initState() {
    super.initState();
    print('initState function ran');
  }

  @override
  Widget build(BuildContext context) {
    print('initState function ran');
    return Scaffold(
      backgroundColor: CustomColors.primaryBackgroundColour,
      appBar: AppBar(
        backgroundColor: CustomColors.primaryMenuBackgroundColour,
        title: Text('Choose Location', style: TextStyle(color: CustomColors.primaryTextColour, letterSpacing: 2)),
        elevation: 0,
      ),
      body: Text("Choose Location screen", style: TextStyle(color: CustomColors.primaryTextColour)),
    );
  }
}
