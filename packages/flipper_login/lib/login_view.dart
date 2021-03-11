library flipper_login;

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:universal_platform/universal_platform.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  LoginViewState createState() => LoginViewState();
}

class LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {

      return Column(
        children: <Widget>[
          Container(
              color: Colors.blue[100],
              width: double.infinity,
              height: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/fliper-logo.png', width: 80, height: 80,),

                  SizedBox(height: 3,),

                  Text('Flipper', textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 26, color: Colors.blue[900]),),

                  SizedBox(height: 10,),

                  Text('Interact and grow your bussiness', textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.grey[700]),),
                ],
              ),
            ),

          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                      padding: EdgeInsets.all(15),
                      color: Colors.blue[900],
                      child: Text("Create Account",style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                      ),),
                      onPressed: (){},
                    ),
                  ),
                  SizedBox(height: 15,),
                  SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                      padding: EdgeInsets.all(15),
                      child: Text("Sign In",style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                      ),),
                      onPressed: (){},
                    ),
                  )
                ]
            ),
          ),

        ],
      );
  }
}