import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state/pages/Signup_Screen.dart';
import 'package:state/pages/login_screen.dart';
import 'package:state/widgets/signup_button.dart';

class Myhome extends StatefulWidget {
  @override
  _MyhomeState createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Center(
                  child: Text("Welcome",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: "PottaOne"
                      ))),
              SizedBox(
                height: 40,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.35,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("images/im1.png"),
                )),
              ),
              SizedBox(
                height: 80,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_){
                      return Signup_Screen();
                    }));
                  }, child: Signup_button("Sign Up", Colors.purple,)),
              SizedBox(
                height: 30,
              ),
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_){
                      return login_screen();
                    }));
                  },
                  child: Signup_button("Login", Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}
