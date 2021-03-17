library flipper_login_popup;

import 'package:flipper/proxy.dart';
import 'package:flutter/material.dart';

import './button_view.dart';

class LoginPopupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      color: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 40, 10, 10),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.fromLTRB(2.5, 0, 2.5, 0),
                      child: const Text(
                        'Welcome to',
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(2.5, 0, 2.5, 0),
                      child: const Text(
                        'Flipper',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w900),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(2.5, 0, 2.5, 0),
                      child: const Text(
                        'app',
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                    ),
                  ]),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: const TextField(
                autocorrect: true,
                decoration: InputDecoration(
                  hintText: '+250789078834',
                  prefixIcon: Icon(Icons.phone),
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white70,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.green, width: 2),
                  ),
                ),
              ),
            ),
            Container(
              child: const Text(
                'After entering your phone number click verify to authenticate yourself! then wait up to 20seconds to get the OTP and proceed',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Container(
              child: ButtonView(
                'Verify',
                () {
                  // Navigator.of(context).pop();
                  ProxyService.api.webDesktopLogin(number: '78347');
                },
                Colors.white,
                Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
