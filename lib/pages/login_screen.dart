import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state/pages/send_n_phone.dart';
import 'package:state/widgets/TextFields.dart';
import 'package:state/widgets/signup_button.dart';

import 'HomePages.dart';
import 'Signup_Screen.dart';

class login_screen extends StatefulWidget {
  @override
  _login_screenState createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  bool ishiden = false;

   ///////////TextFields Controllers
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
                height: MediaQuery.of(context).size.height * 0.20,
                child: Text("Login!",
                    style: TextStyle(
                        fontFamily: "PottaOne",
                        fontSize: 55,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple))),
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
                      SizedBox(height: 30),
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
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return send_n_phone();
                          }));
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          alignment: Alignment.topRight,
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Center(
                          child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_){
                                  return HomePages();
                                }));
                              },
                              child:
                                  Signup_button("Login", Colors.deepPurple))),
                      Container(
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        child: Text(
                          "- - - -Or- - - -",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: facebooklinked(),

                              ///methode
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    image: DecorationImage(
                                        image:
                                            AssetImage("images/facebook.png"),
                                        fit: BoxFit.fill)),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            InkWell(
                              onTap: googlelinked(),

                              ///methode
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    image: DecorationImage(
                                        image: AssetImage("images/google.png"),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account? ",style: TextStyle(color: Colors.white),),
                            InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) {
                                  return Signup_Screen();
                                }));
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontFamily: "PottaOne",
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                          ],
                        ),
                      ),
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

  facebooklinked() {}

  googlelinked() {}
}
