library flipper_login_popup;

import 'package:flutter/material.dart';

import './button_view.dart';

class LoginPopupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 400.0,
      color: Colors.transparent,
      child: new Container(
        padding: EdgeInsets.fromLTRB(10, 40, 10, 10),
        decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(20.0),
                topRight: const Radius.circular(20.0))),
        child: new Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(2.5, 0, 2.5, 0),
                      child: Text(
                        'Welcome to',
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(2.5, 0, 2.5, 0),
                      child: Text(
                        'Flipper',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w900),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(2.5, 0, 2.5, 0),
                      child: Text(
                        'app',
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                    ),
                  ]),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: TextField(
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
              child: Text(
                'After entering your phone number click verify to authenticate yourself! then wait up to 20seconds to get the OTP and proceed',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Container(
              child: ButtonView(
                'Verify',
                () {
                  Navigator.of(context).pop();
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
