import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Plumbers extends StatefulWidget {
  @override
  _PlumbersState createState() => _PlumbersState();
}

class _PlumbersState extends State<Plumbers> {
  Color theme = Color(0xFFF3CA20);
  Color text = Color(0xFF707070);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeeeeee),
      appBar: AppBar(
        shadowColor: Colors.black45,
        iconTheme: IconThemeData(color: theme),
        backgroundColor: Colors.white,
        // elevation: 0,
        centerTitle: true,
        title: Text(
          'Plumbers',
          style: TextStyle(
              color: Color(0xFFF3CA20),
              fontWeight: FontWeight.w900,
              fontSize: 27),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              PlumberList(),
              Padding(
                padding: const EdgeInsets.only(
                    left: 56.0, top: 10, right: 56, bottom: 1),
                child: Divider(
                  height: 20,
                  thickness: 1,
                ),
              ),
              PlumberList(),
              Padding(
                padding: const EdgeInsets.only(left: 56.0, top: 10, right: 56),
                child: Divider(
                  height: 20,
                  thickness: 1,
                ),
              ),
              PlumberList(),
              Padding(
                padding: const EdgeInsets.only(left: 56.0, top: 10, right: 56),
                child: Divider(
                  height: 20,
                  thickness: 1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PlumberList extends StatefulWidget {
  const PlumberList({Key? key}) : super(key: key);

  @override
  _PlumberListState createState() => _PlumberListState();
}

class _PlumberListState extends State<PlumberList> {
  @override
  Widget build(BuildContext context) {
    Color theme = Color(0xFFF3CA20);
    Color text = Color(0xFF707070);
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 24),
          child: Container(
            height: 162,
            width: 366,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 43.0, left: 40),
          child: Image.network(
            'https://cdn.iconscout.com/icon/premium/png-256-thumb/plumber-2294796-1938528.png',
            height: 140,
            width: 140,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 43.0, left: 200),
          child: Text(
            'Ramu Kaka',
            style: TextStyle(
                fontSize: 24, color: theme, fontWeight: FontWeight.w900),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 73.0, left: 202),
          child: Text(
            'Bhery Good',
            style: TextStyle(
                fontSize: 19,
                color: Color(0xFF707070),
                fontWeight: FontWeight.w800),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 98.0, left: 202),
          child: Text(
            'Lives in Nala Supara',
            style: TextStyle(
                fontSize: 19,
                color: Color(0xFF707070),
                fontWeight: FontWeight.w800),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 128.0, left: 203),
          child: Row(
            children: [
              Text(
                '4.5',
                style: TextStyle(
                    fontSize: 24, color: theme, fontWeight: FontWeight.w800),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, bottom: 4),
                child: Icon(
                  FontAwesomeIcons.star,
                  color: theme,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
