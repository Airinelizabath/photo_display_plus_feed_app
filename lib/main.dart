import 'package:flutter/material.dart';
import 'package:task2/screens/homescreen.dart';
import 'package:task2/widgets/pagescroll.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor:Color(0xFFE9E9E9)
      ),
      home: HomeScreen(),

    );
  }
}
