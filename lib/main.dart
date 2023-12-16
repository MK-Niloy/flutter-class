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
     // child: Image.network(
       // 'https://mdbootstrap.com/docs/standard/plugins/dummy/dummy.jpg'),
      child: Image.asset('images/photo.jpeg',
        height: 400,
        width: 400,
        fit: BoxFit.fitWidth,
          //repeat: ImageRepeat.repeat,

      ),
    ),
   );
  }

}
