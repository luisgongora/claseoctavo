import 'package:clase_2/app.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Prueba'),
      ),
      body: Text('Soy el Chat'),
      drawer: drawerMenu(context),
      bottomNavigationBar: bottomBarNav(),
    );
  }
}
