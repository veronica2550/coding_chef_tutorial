import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Myapp',
      theme: ThemeData(primaryColor: Colors.blue),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context2) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FirstPage'),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(context2,
                    MaterialPageRoute(builder: ((context) => SecondPage())));
              },
              child: Text('Go to the Second Page'))),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondPage'),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pop(ctx);
              },
              child: Text('Go to the First Page'))),
    );
  }
}
