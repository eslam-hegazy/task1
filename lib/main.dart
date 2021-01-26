import 'package:flutter/material.dart';
import 'Myhome.dart';
void main(){
  runApp(myapp());
}
class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     title: "My App",
     debugShowCheckedModeBanner: false,
     home: Myhome(),
   );
  }
}