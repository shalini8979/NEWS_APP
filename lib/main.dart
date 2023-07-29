
import 'package:flutter/material.dart';

import 'package:untitled/firstpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 243, 245, 245),
        body: 
        newScreen(),

      ),
    );
  }
}

