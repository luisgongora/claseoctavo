import 'package:clase_2/pages/home.dart';
import 'package:flutter/material.dart';

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('App Prueba Otro'),
    ),
    body: Home(),
  );
}

Widget bottomBarNav() {
  return BottomNavigationBar(items: <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.add_business),
      label: 'Servicios',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.chat),
      label: 'Chat',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.mail),
      label: 'Contacto',
    ),
  ]);
}

Widget drawerMenu(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Soy el Header')),
        ListTile(
          title: Text('Home'),
          onTap: () {
            Navigator.pushNamed(context, '/home');
          },
        ),
        ListTile(
          title: Text('Servicios'),
          onTap: () {
            Navigator.pushNamed(context, '/servicios');
          },
        ),
        ListTile(
          title: Text('Chat'),
          onTap: () {
            Navigator.pushNamed(context, '/chat');
          },
        ),
        ListTile(
          title: Text('Contacto'),
          onTap: () {
            Navigator.pushNamed(context, '/contacto');
          },
        ),
      ],
    ),
  );
}
