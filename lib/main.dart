import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:HomeScreen(),
    );
    //TODO: implement build
  }
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.flutter_dash, size: 32, color: Colors.amber,),
        title: Text('Flutter' ,style: TextStyle(
            fontSize: 32,
          color: Colors.amber,

        ),),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //mainAxisSize: MainAxisSize.min,
       // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('data' ,style: TextStyle(
            color: Colors.amber,
            fontSize: 32,
          ),),
          Text('data'),
          Text('data'),
          Text('data'),
        ],
      ),
    );
  }

}
