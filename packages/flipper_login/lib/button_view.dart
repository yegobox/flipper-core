library flipper_button;

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color buttonColor;
  final VoidCallback onPress;
  Button(this.text, this.onPress, this.textColor, this.buttonColor);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
      child: SizedBox(
        width: double.infinity,
        child: RaisedButton(
          onPressed: onPress,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
          color: buttonColor,
          padding: EdgeInsets.all(20),
        ),
      ),
    );
  }
}
