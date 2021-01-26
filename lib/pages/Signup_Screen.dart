import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state/pages/login_screen.dart';
import 'package:state/widgets/TextFields.dart';
import 'package:state/widgets/signup_button.dart';

import 'HomePages.dart';

class Signup_Screen extends StatefulWidget {
  @override
  _Signup_ScreenState createState() => _Signup_ScreenState();
}

class _Signup_ScreenState extends State<Signup_Screen> {
  bool ishiden = false;

  ///////////TextFields Controllers
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController Password = TextEditingController();
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.15,
              child: Text("Sign Up!",
                  style: TextStyle(
                      fontFamily: "PottaOne",
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple)),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 25),
                      Text("User Name",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Acme",
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 16),
                      textfield("Enter Your Name", TextInputType.name,
                          Icon(Icons.perm_contact_calendar), name),
                      SizedBox(height: 20),
                      Text("Phone Number",
                          style: TextStyle(
                              fontFamily: "Acme",
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 16),
                      textfield("Enter Your Phone Number", TextInputType.phone,
                          Icon(Icons.phone_android), phone),
                      SizedBox(height: 20),
                      Text("Password",
                          style: TextStyle(
                              fontFamily: "Acme",
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 15),
                      ////password field
                      Container(
                        padding: EdgeInsets.only(
                            right: 10, left: 8, top: 5, bottom: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: TextField(
                          controller: Password,
                          obscureText: ishiden,
                          decoration: InputDecoration(
                              hintText: "***********",
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    ishiden = !ishiden;
                                  });
                                },
                                icon: Icon(ishiden
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                              ),
                              prefixIcon: Icon(Icons.lock_rounded),
                              enabledBorder: InputBorder.none,
                              border: InputBorder.none),
                        ),
                      ),
                      ////forgot password
                      SizedBox(height: 20),
                      Center(
                          child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_){
                                  return HomePages();
                                }));
                              },
                              child: Signup_button("Login", Colors.purple))),
                      Container(
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        child: Text(
                          "- - - - Or - - - -",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        // height: 30,
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an account? ",style: TextStyle(color: Colors.white),),
                            InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) {
                                  return login_screen();
                                }));
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w900,fontFamily: "PottaOne"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
