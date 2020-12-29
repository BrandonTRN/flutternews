import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Tab3Page extends StatefulWidget {
  @override
  _Tab3PageState createState() => _Tab3PageState();
}

class _Tab3PageState extends State<Tab3Page>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
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
                  child: Text(
                    'Tecnológico de Estudios Superiores de Ecatepec',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'División de Ingeniería Informática',
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
            color: Colors.blueGrey[400],
          ),
          Text('15701'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'Alfaro Fuentes Alondra Jocelyn, '
        'Fernández Avila Edgar Alejandro, '
        'González Ponciano Ivan, '
        'Maldonado Villaseñor Donovan Jirov, '
        'Luna Calva Mauricio y '
        'Trejo Nava Brandon Eduardo',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Desarrolladores',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Acerca de Desarrolladores'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/img/tese.png',
              width: 600,
              height: 390,
              fit: BoxFit.cover,
            ),
            titleSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
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

  @override
  bool get wantKeepAlive => true;
}
