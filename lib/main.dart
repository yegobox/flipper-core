import 'package:flipper/flipper_app.dart';
import 'package:flipper/locator.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
<<<<<<< HEAD
  runApp(FlipperApp());
=======
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Colors.transparent,
      ),
      home: LoginView(),
      debugShowCheckedModeBanner: false,
    );
  }
>>>>>>> 5ad2c10139ced5296d4ce632e3c08adb016bfb36
}
