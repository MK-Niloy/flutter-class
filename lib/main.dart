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
      leading: Icon(Icons.home,size: 32,color: Colors.blue,),
      title: Text('Home' ,style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: Colors.blue,
      ),),
      backgroundColor: Colors.black,
    ),
    body: Center(
     // child: Image.network(
       // 'https://mdbootstrap.com/docs/standard/plugins/dummy/dummy.jpg'),
      // child: Image.asset('images/photo.jpeg',
      //   height: 400,
      //   width: 400,
      //   fit: BoxFit.fitWidth,
      //     //repeat: ImageRepeat.repeat,
      //
      // ),
      child: Text(
        'Hello Niloy, Welcome back',
        style: TextStyle(
          fontSize: 30,
          color: Colors.blue,
          fontFamily:'Raleway',
          decoration: TextDecoration.underline,
          fontStyle: FontStyle.italic,
          overflow: TextOverflow.visible,
        ),
      ),
    ),
   );
  }

}
