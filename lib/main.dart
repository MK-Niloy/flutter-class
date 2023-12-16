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
    appBar: AppBar(
      leading: Icon(Icons.home,size: 50,color:Colors.green,),
      title: Text('Home', style: TextStyle(
        fontSize: 30,
        color: Colors.green,
      ),),
      backgroundColor: Colors.black,
      elevation: 40,//elevartion means height
    ),
   );
  }

}
