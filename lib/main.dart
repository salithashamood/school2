import 'package:flutter/material.dart';
import 'package:school2/screens/login_page.dart';

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
      title: 'School Login page',
      theme: ThemeData(
        fontFamily: 'segoeui',
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
