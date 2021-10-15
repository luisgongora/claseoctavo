import 'package:flutter/material.dart';

import '../app.dart';

class Contacto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Prueba'),
      ),
      body: Text('Soy el Contacto'),
      drawer: drawerMenu(context),
      bottomNavigationBar: bottomBarNav(),
    );
  }
}
