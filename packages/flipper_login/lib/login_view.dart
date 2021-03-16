library flipper_login;

import 'dart:developer';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flipper/proxy.dart';

import './button_view.dart';
import './login_popup_view.dart';
import './top_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  LoginViewState createState() => LoginViewState();
}

class LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          TopView(),
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(10, 40, 10, 40),
              child: Column(
                children: <Widget>[
                  ButtonView(
                    'Create Account',
                    () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) => LoginPopupView(),
                      );
                    },
                    Colors.white,
                    Colors.blue,
                  ),
                  ButtonView(
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

  void onPressed() {}
}
