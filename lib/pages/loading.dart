import 'package:flutter/material.dart';
import 'package:timein/model/user.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async {

    User user = new User();
    user.setFirstName = "firstName";
    user.setLastName = "lastName";
    user.setLocation = "UK";

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Loading screen"),
    );
  }
}
