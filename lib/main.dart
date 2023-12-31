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
 var myItems=[

   {
     "img": "https://cdn.pixabay.com/photo/2016/12/01/18/17/mobile-phone-1875813_1280.jpg",
     "title": "Elegant Wooden Desk",
     "price": "199.99"
   },
   {
     "img": "https://cdn.pixabay.com/photo/2016/11/29/12/30/phone-1869510_1280.jpg",
     "title": "Modern Leather Sofa",
     "price": "299.99"
   },
   {
     "img": "https://cdn.pixabay.com/photo/2014/03/22/22/17/phone-292994_1280.jpg",
     "title": "Vintage Coffee Table",
     "price": "149.99",
   },
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Home', style: TextStyle(fontSize: 32,),),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: myItems.length,
          itemBuilder: (context,index){
            return InkWell(
              onTap: (){ mySnackBar(context,myItems[index]['title'].toString());},
              child: Card(
                elevation: 2,
                child: Column(

                  children: [
                    // Expanded(child: Image.network(myItems[index]['img'].fit:BoxFit.cover!),),
                    Expanded(child: Image.network(myItems[index]['img'].toString()?? " "),),
                    //Padding(padding: EdgeInsets.all(5.0),child: Text(myItems[index]['title']!),),
                    Padding(padding: EdgeInsets.all(5.0),child: Text(myItems[index]['title'].toString()??" "),),
                    //Padding(padding: EdgeInsets.all(5.0),child: Text(myItems[index]['price']!),),
                    Padding(padding: EdgeInsets.all(5.0),child: Text(myItems[index]['price'].toString()??" "),)
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}
