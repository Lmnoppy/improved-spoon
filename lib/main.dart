import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timein/constants/themeData.dart';
import 'package:timein/views/clockView.dart';

void main() {
  runApp(MaterialApp(
    home: Home()
  ));
}

DateTime now = new DateTime.now();
DateTime currentLocalTime = new DateTime(now.hour, now.minute, now.second);
var formattedTime = DateFormat('HH:mm').format(DateTime.now());

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Row(
       children: [
         Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
           TextButton(
             onPressed:() {},
             child: Column(
               children: [
                 FlutterLogo(),
                 Text("Alarm", style: TextStyle(color: Colors.white, fontSize: 14,)),
                 FlutterLogo(),
                 Text("Stopwatch", style: TextStyle(color: Colors.white, fontSize: 14,)),
                 FlutterLogo(),
                 Text("Timer", style: TextStyle(color: Colors.white, fontSize: 14,)),
                 FlutterLogo(),
                 Text("Settings", style: TextStyle(color: Colors.white, fontSize: 14,)),
               ],
             ),
           ),
           ],
         ),
         VerticalDivider(color: CustomColors.primaryTextColor, width: 1,),
         Container(
             padding: EdgeInsets.all(32),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text("Time in", style: TextStyle(color: Colors.white, fontSize: 24, letterSpacing: 2)),
                 SizedBox(height: 8,),
                 Text("Glasgow, UK", style: TextStyle(color: Colors.white, fontSize: 28, letterSpacing: 2)),
                 Text(formattedTime, style: TextStyle(color: Colors.white, fontSize: 64, letterSpacing: 2)),
                 ClockView(size: MediaQuery.of(context).size.height / 2.8),
                 Text("Timezone", style: TextStyle(color: Colors.white, fontSize: 20, letterSpacing: 2)),
                 Row(
                   children: [
                     Icon(Icons.language, color: CustomColors.primaryTextColor,),
                     Text("UTC", style: TextStyle(color: Colors.white, fontSize: 20))
                   ],
                 )
               ],
             )
         )
       ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.teal[200],
      ),
    );
  }
}
