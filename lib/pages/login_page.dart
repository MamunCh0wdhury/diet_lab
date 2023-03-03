// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:diet_lab/components/myText_field.dart';
import 'package:diet_lab/components/my_button.dart';
import 'package:diet_lab/components/signup.dart';
import 'package:diet_lab/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f9fe),
      body: Center(
        child: Column(
          children: [
            //Logo
            SizedBox(
              height: 100,
            ),
            Icon(
              Icons.android_rounded,
              size: 100,
            ),
            SizedBox(
              height: 50,
            ),
            //email
            MyTextfield(
              hintText: "Email Address",
              obsureText: false,
              prefixIcon: Icon(Icons.email_outlined,size: 20,),
              suffixIcon: null,
            ),
            //password
            SizedBox(height: 10,),
            MyTextfield(
              hintText: "Password",
              obsureText: true,
              prefixIcon: Icon(Icons.lock_outline,size: 20,),
              suffixIcon: IconButton(onPressed: null,icon: Icon(Icons.remove_red_eye_outlined,size: 20,),),
            ),
            SizedBox(height: 25,),
            //login button
            MyButton(onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context){
                    return HomePage();
                  }
                  ));
            },),
            //Signup
            SizedBox(height: 10,),
            MySignup(),
          ],
        ),
      ),
    );
  }
}
