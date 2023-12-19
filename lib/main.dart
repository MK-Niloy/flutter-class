import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:HomeScrene(),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
class HomeScrene extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.blue,
     appBar: AppBar(
       leading: Icon(Icons.flutter_dash_outlined ,color: Colors.amber, size: 32,),
       title:Text('Flutter', style: TextStyle(
         fontSize: 32,
         color: Colors.amber,
       ),),
       backgroundColor: Colors.black,
     ),

     body: Column(

       mainAxisSize: MainAxisSize.max,
       mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         Text('Data'),
         Text('Data'),
         Text('Data'),
         Text('Data'),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text('Data'),
             Text('Data'),
             Text('Data'),
             Text('Data'),
           ],

         ),
         ElevatedButton(onPressed: (){
           showAboutDialog(context: context);//Apps about Dialog
         },
             child: Text('To Do'))
        ],
     ),
   );
  }

}
