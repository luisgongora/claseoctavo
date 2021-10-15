import 'package:flutter/material.dart';

import 'pages/chat.dart';
import 'pages/contacto.dart';
import 'pages/home.dart';
import 'pages/servicios.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        routes: <String, WidgetBuilder>{
          "/home": (BuildContext context) => Home(),
          "/servicios": (BuildContext context) => Servicios(),
          "/chat": (BuildContext context) => Chat(),
          "/contacto": (BuildContext context) => Contacto(),
        },
        initialRoute: '/home');
  }
}
