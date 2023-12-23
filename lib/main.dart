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
           Container(
             height: 300,
             width: 450,
            // margin: EdgeInsets.all(20), all site
             //margin: EdgeInsets.only(left: 10,right: 30,bottom: 40,top: 15),
             margin: EdgeInsets.symmetric(horizontal: 20,vertical: 14),
             //padding: EdgeInsets.all(13), mane votir dike place newa
             //padding: EdgeInsets.only(left: 10,right: 30,bottom: 40,top: 15),
             padding: EdgeInsets.symmetric(horizontal: 20,vertical: 14),
             //color: Colors.amber,
             child: Text('Niloy'),
             alignment: Alignment.center,
             decoration: BoxDecoration(
               color:Colors.green,
              // borderRadius: BorderRadius.circular(30),
               borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(10),
                 topRight: Radius.circular(30),
                 bottomLeft: Radius.circular(15),
               ),
               border: Border.all(
                 color: Colors.amber,
                 width: 10,
                 style: BorderStyle.solid,
               ),
               //shape: BoxShape.circle, border radius use korle shape use kora jabe nah
               boxShadow: [
                 BoxShadow(
                   color: Colors.black87,
                   blurRadius: 7,
                   offset: Offset (5,6),
                 )

               ]
             ),
           )
         ],
       ),

     )

   );
  }

}