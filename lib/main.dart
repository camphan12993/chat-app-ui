import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat App',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Color(0xff0378e5),
          fontFamily: 'Nunito'),
      home: Home(),
    );
  }
}
