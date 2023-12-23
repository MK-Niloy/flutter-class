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
             TextField(
               obscureText: true,//password type likha
               controller: searchTextFieldController,
               onTap: (){
                 print('Skjkj');
               },
               onChanged: (String input){
                 print(input);
               },
              // keyboardType: TextInputType.phone,
               textInputAction: TextInputAction.done,
               onSubmitted: (String value){
                 print(searchTextFieldController.text);
                 searchTextFieldController.clear();
               },
               decoration: InputDecoration(
                 //enabled: false,
                  hintText: 'Enter your Name',
                  label:Text('Name'),
                 border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.amber,
                      width: 15,
                      style: BorderStyle.solid,
                    ),
                 ),
                 enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(
                     color: Colors.amber,
                     width: 15,
                     style: BorderStyle.solid,
                   ),
                 ),
                 disabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(
                     color: Colors.red,
                     width: 3,
                     style: BorderStyle.solid,
                   ),
                 ),
                 focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(
                     color: Colors.green,
                     width: 5,
                     style: BorderStyle.solid,
                   ),
                 ),

               ),
             ),
         ],
       ),

     )

   );
  }

}