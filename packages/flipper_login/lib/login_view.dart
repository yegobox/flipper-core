library flipper_login;

import 'package:flutter/material.dart';
import 'package:flipper/proxy.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  LoginViewState createState() => LoginViewState();
}

class LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              ProxyService.api.login();
            },
            child: Text('Log in'),
          ),
        ),
      ),
    ); //nothing to be returned.
  }

  void onPressed() {}
}
