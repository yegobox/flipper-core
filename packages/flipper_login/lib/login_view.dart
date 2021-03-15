library flipper_login;

import 'dart:developer';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:universal_platform/universal_platform.dart';

import './button_view.dart';
import './logo_view.dart';
import './text_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  LoginViewState createState() => LoginViewState();
}

class LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.purpleAccent[400],
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Logo(),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: TextView('Flipper', 32),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: TextView('Interact and grow your business', 24),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(40),
              child: Column(
                children: <Widget>[
                  Button(
                    'Create Account',
                    () => {print('Create account clicked')},
                    Colors.white,
                    Colors.blue,
                  ),
                  Button(
                    'Sign In',
                    () => {print('Sign In clicked')},
                    Colors.blue,
                    Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
