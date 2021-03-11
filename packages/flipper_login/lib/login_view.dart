library flipper_login;

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
    if (UniversalPlatform.isWeb) {
      return Scaffold(
          appBar: AppBar(
            title: Text('AppBar demo'),
          ),
          body: Text('web'));
    } else if (UniversalPlatform.isWindows ||
        UniversalPlatform.isLinux ||
        UniversalPlatform.isMacOS) {
      return Scaffold(
          appBar: AppBar(
            title: Text('AppBar demo'),
          ),
          body: Text('Desktop'));
    } else if (UniversalPlatform.isIOS) {
      return Scaffold(
          appBar: AppBar(
            title: Text('AppBar demo'),
          ),
          body: Text('Ios'));
    } else if (UniversalPlatform.isAndroid) {
      return Scaffold(
          appBar: AppBar(
            title: Text('AppBar demo'),
          ),
          body: Text('android'));
    }
    return Scaffold(body: SizedBox.shrink()); //nothing to be returned.
  }
}