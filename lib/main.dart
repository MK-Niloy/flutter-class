import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:HomeScreen(),
    );

    // TODO: implement build
    throw UnimplementedError();
  }
}
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Home',style: TextStyle(
          color: Colors.amber,
          fontSize: 32,
        ),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              print('See Now');
            }, child: Text('Home'),
              onLongPress: (){
              print('It is long press');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:Colors.amber,
                foregroundColor: Colors.white,
                // minimumSize: Size(300, 40),
                // maximumSize: Size(300, 80),
                //padding: EdgeInsets.all(15),//impotant key
               // padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
               // padding: EdgeInsets.only(left: 12, top: 12,right: 20,bottom: 13),
                elevation: 15,//shadow
                shadowColor: Colors.blue,
                textStyle: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
                shape: RoundedRectangleBorder(
                 // borderRadius: BorderRadius.zero,
                  borderRadius: BorderRadius.circular(10),
                //  borderRadius: BorderRadius.all(),
                ),
              ),
            ),
            TextButton(onPressed: (){
              print('Text Button');
            },
                child: Text('Text Button'),
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                //elevated button er moto sob style kora jabe
              ),
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.mobile_friendly),),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
    );
  }

}