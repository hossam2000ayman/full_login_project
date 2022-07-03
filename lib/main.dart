import 'package:flutter/material.dart';
import 'package:full_login_project/Login.dart';
import 'package:full_login_project/SignUp.dart';
import 'package:full_login_project/Welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     
     initialRoute: '/Welcome',

     routes: {
      // ignore: prefer_const_constructors
      '/Welcome':(context) => Welcome(),
      // ignore: prefer_const_constructors
      '/Login':(context) => Login(),
      // ignore: prefer_const_constructors
      '/SignUp':(context) => SignUp(),
     },
    );
  }
}
