import 'package:clase_2/app.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: columnContent(),
      drawer: drawerMenu(context),
      bottomNavigationBar: bottomBarNav(),
    );
  }
}

Widget columnContent() {
  return Column(
    children: [
      imageSection(),
      buttonSection(),
      textoBody(),
    ],
  );
}

Widget imageSection() {
  return Center(
    child: Image.asset(
      'assets/mountain.jpg',
      width: 600,
      height: 400,
      fit: BoxFit.cover,
    ),
  );
}

Widget textoBody() {
  return Container(
    padding: EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 50),
    alignment: Alignment.center,
    child: Text(
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
      'Alps. Situated 1,578 meters above sea level, it is one of the '
      'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
      'half-hour walk through pastures and pine forest, leads you to the '
      'lake, which warms to 20 degrees Celsius in the summer. Activities '
      'enjoyed here include rowing, and riding the summer toboggan run.',
      softWrap: true,
    ),
  );
}

Widget buttonSection() {
  Color color = Colors.redAccent;

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _bottonsRow(color, Icons.call, 'LLAMAR'),
      _bottonsRow(color, Icons.near_me, 'RUTA'),
      _bottonsRow(color, Icons.share, 'COMPARTIR'),
    ],
  );
}

Widget _bottonsRow(Color color, IconData icon, String label) {
  Color color = Colors.redAccent;
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}

Widget titleSection() {
  final _textStyle =
      TextStyle(fontWeight: FontWeight.w600, color: Colors.white, fontSize: 24);

  return Container(
    padding: EdgeInsets.all(32),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.red.shade500,
    ),
    child: Row(
      children: [
        Expanded(
          /*1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*2*/
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text('Oeschinen Lake Campground', style: _textStyle),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
        /*3*/
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        const Text('41'),
      ],
    ),
  );
}
