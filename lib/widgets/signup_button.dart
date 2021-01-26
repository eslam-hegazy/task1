import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup_button extends StatelessWidget {
  final String name;
  final Color color;

  Signup_button( this.name, this.color) ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width*0.85,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(child: Text(name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16,),)),
    );
  }
}
