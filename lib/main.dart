import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title : 'To Do'
    home: HomeScreen(),
    );
    // TODO: implement build
    //throw UnimplementedError();
  }
  
}
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.amberAccent ,
     body: Center(
       child: Text(
         'Hello Niloy',
         textAlign: TextAlign.center,
         style: TextStyle(
           color: Colors.white,
           fontSize: 60,
           fontWeight: FontWeight.w800,
           backgroundColor: Colors.grey,
           decoration: TextDecoration.underline ,
           wordSpacing: 10,
           letterSpacing: 23,
           overflow: TextOverflow.ellipsis,
         ),
       ),
     ),
   );
  }
  
}
