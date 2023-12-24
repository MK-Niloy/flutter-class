import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScrene(),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
class HomeScrene extends StatelessWidget{
  void mySnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.blue,
       title: Text('Home', style: TextStyle(
          color: Colors.amber,
         fontSize: 32,
        ),
       ),
     ),
     body:ListView(
       children: [
        ListTile(leading: Icon(Icons.star), title: Text('Item 1'), onTap: (){mySnackBar(context, "item 1");}),
        ListTile(leading: Icon(Icons.star), title: Text('Item 2'), onTap: (){mySnackBar(context, "item 2");}),
        ListTile(leading: Icon(Icons.star), title: Text('Item 3'), onTap: (){mySnackBar(context, "item 3");}),
       ],
     ),
   );
  }
}