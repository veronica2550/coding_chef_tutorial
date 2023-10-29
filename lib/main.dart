import 'package:flutter/material.dart';
import 'package:coding_chef/ScreenA.dart';
import 'package:coding_chef/ScreenB.dart';
import 'package:coding_chef/ScreenC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => ScreenA(),
        '/b': (context) => ScreenB(),
        '/c': (context) => ScreenC()
      },
    );
  }
}
