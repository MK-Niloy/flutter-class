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
  var myItems = [
    {"name": "Niloy", "city": "Dhaka", "age": "23"},
    {"name": "John", "city": "New York", "age": "30"},
    {"name": "Alice", "city": "London", "age": "25"},
    {"name": "Bob", "city": "Paris", "age": "28"},
    {"name": "Eva", "city": "Berlin", "age": "22"},
    {"name": "David", "city": "Tokyo", "age": "35"},
    {"name": "Sara", "city": "Sydney", "age": "29"},
    {"name": "Michael", "city": "Los Angeles", "age": "32"},
    {"name": "Sophie", "city": "Toronto", "age": "26"},
    {"name": "Chris", "city": "Chicago", "age": "27"},
    {"name": "Niloy", "city": "Dhaka", "age": "23"},
    {"name": "John", "city": "New York", "age": "30"},
    {"name": "Alice", "city": "London", "age": "25"},
    {"name": "Bob", "city": "Paris", "age": "28"},
    {"name": "Eva", "city": "Berlin", "age": "22"},
    {"name": "David", "city": "Tokyo", "age": "35"},
    {"name": "Sara", "city": "Sydney", "age": "29"},
    {"name": "Michael", "city": "Los Angeles", "age": "32"},
    {"name": "Sophie", "city": "Toronto", "age": "26"},
    {"name": "Chris", "city": "Chicago", "age": "27"},
  ];


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
      backgroundColor: Colors.greenAccent,
      body:ListView.builder(
        itemCount: myItems.length,
        itemBuilder: (context,index){
          return ListTile(
            leading: Icon(Icons.star),
            title: Text(myItems[index]['name']!),
            subtitle:Text(myItems[index]['city']!),
            onTap: (){
              mySnackBar(context, myItems[index]['age']!);},
          );
        }
      )
      );


  }
}