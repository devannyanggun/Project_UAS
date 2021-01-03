import 'package:flutter/material.dart';
import 'Login.dart';
import 'Menu.dart';
import 'Example.dart';

void main(){
  runApp(MyApp(
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Example(),
      routes: <String, WidgetBuilder>{
        '/Login' : (BuildContext context) => Login(),
        '/Menu' : (BuildContext context) => Menu(),
      },
    );
  }
}
