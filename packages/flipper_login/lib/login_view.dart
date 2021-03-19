library flipper_login;

import 'dart:ui';

import 'package:flutter/material.dart';

import './login_popup_view.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.blue[100],
            width: double.infinity,
            height: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/fliper-logo.png',
                  width: 80,
                  height: 80,
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  'Flipper',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 26,
                      color: Colors.blue[900],
                      decoration: TextDecoration.none),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Interact and grow your bussiness',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[700],
                      decoration: TextDecoration.none),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      // padding: EdgeInsets.all(15),
                      // color: Colors.blue[900],
                      child: const Text(
                        'Create Account',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            decoration: TextDecoration.none),
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => LoginPopupView(),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      // padding: EdgeInsets.all(15),
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            decoration: TextDecoration.none),
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => LoginPopupView(),
                        );
                      },
                    ),
                  )
                ]),
          ),
        ],
      ),
    );
  }
}
