import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePages extends StatefulWidget {
  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Home Page",style: TextStyle(fontSize: 30,fontFamily: "PottaOne"),),
      ),
    );
  }
}
