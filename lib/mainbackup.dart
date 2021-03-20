import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MaterialApp(
    home: Home()
  ));
}

DateTime now = new DateTime.now();
DateTime currentLocalTime = new DateTime(now.hour, now.minute, now.second);
var formattedTime = DateFormat('HH:mm:ss').format(DateTime.now());
var formattedDate = DateFormat.yMMMd().format(DateTime.now());

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
         VerticalDivider(color: Colors.white, width: 1,),
         Container(
             padding: EdgeInsets.symmetric(horizontal: 32, vertical: 64),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text("Clock", style: TextStyle(color: Colors.white, fontSize: 24, letterSpacing: 2)),
                 SizedBox(height: 24,),
                 Text(formattedTime, style: TextStyle(color: Colors.white, fontSize: 64, letterSpacing: 2)),
                 Text(formattedDate, style: TextStyle(color: Colors.white, fontSize: 16, letterSpacing: 2)),
                 Text(DateTime.now().timeZoneName + ": Glasgow, UK", style: TextStyle(color: Colors.white, fontSize: 16, letterSpacing: 2)),
                 SizedBox(height: 20,),
                 Row(
                   children: [
                     SizedBox(height: 30,),
                     Text("Timezone", style: TextStyle(color: Colors.white, fontSize: 20, letterSpacing: 2)),
                     SizedBox(height: 10,),
                     Icon(Icons.language, color: Colors.white,),
                     Text(DateTime.now().timeZoneName, style: TextStyle(color: Colors.white, fontSize: 20))
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
