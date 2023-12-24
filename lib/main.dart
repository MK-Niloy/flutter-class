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
  TextEditingController searchTextFieldController=TextEditingController();
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
       child: Column(
         children: [

           InkWell(
             onTap: (){
               print('This fast tap');
             },
             splashColor: Colors.amber,
             highlightColor: Colors.green,
             child: Text('Niloy', style: TextStyle(
               fontSize: 34,
             ),),
             
           ),
           GestureDetector(
             onTap: (){
               print('Niloy');
             },
           ),
         ],
       ),

     )

   );
  }

}