import 'package:flutter/material.dart';

import '../app.dart';

class Servicios extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Prueba'),
      ),
      body: Text('Soy Servicios'),
      drawer: drawerMenu(context),
      bottomNavigationBar: bottomBarNav(),
    );
  }
}
