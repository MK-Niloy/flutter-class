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
     body:Center(
         child: RichText(text: TextSpan(
            text: 'Hello',style: TextStyle(
           color: Colors.amber,
           fontSize: 20,
         ),
             children:[
               TextSpan(
                   text: ' Niloy',style: TextStyle(
                 color: Colors.blue,
                 fontSize: 32,
               )
               ),
               TextSpan(
                   text: ' Welcome',style: TextStyle(
                 color: Colors.green,
                 fontSize: 50,
               )
               ),
             ]
          ),


         ),
     ),

   );
  }

}