import 'package:flutter/material.dart';
import 'package:ramu_ki_chai/Screens/Profile/profile_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        unselectedFontSize: 0,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Image.network(
                'https://cdn.iconscout.com/icon/premium/png-256-thumb/apartment-177-357309.png',
                width: 37,
                height: 37,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: InkWell(
                child: Image.network(
                    'https://raw.githubusercontent.com/Ram-Bihari/images/main/profile-2631161-2177173%20(1).jpg'),
                onTap: () {
                  Navigator.pushNamed(context, '/profile');
                },
              ),
              label: ''),
        ],
      ),
      backgroundColor: Color(0xFFEEEEEE),
      body: Stack(
        children: <Widget>[
          Container(
            height: 279,
            width: 412,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: const Offset(
                    2.0,
                    3.0,
                  ),
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ), //BoxShadow
                BoxShadow(
                  color: Colors.white,
                  offset: const Offset(2.0, 0.0),
                  blurRadius: 0,
                  spreadRadius: 13,
                ), //BoxShadow
              ],
            ), //BoxDecoratio
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 9),
              child: Image.network(
                  'https://image.flaticon.com/icons/png/32/1243/1243926.png'),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 360.0, top: 8),
              child: Image.network(
                  'https://image.flaticon.com/icons/png/32/1251/1251132.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 190.0, left: 100),
            child: Text(
              'Welcome Back,',
              style: TextStyle(
                  color: Color(0xFF707070),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 230.0, left: 180),
            child: Text(
              'Tijil',
              style: TextStyle(
                  color: Color(0xFFF3CA20),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 147.0, top: 3),
            child: SafeArea(
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(
                    'https://cdn.iconscout.com/icon/free/png-512/man-1659494-1410016.png'),
                radius: 60,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/plumbers');
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 330.0, left: 20),
              child: Container(
                height: 190,
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 330.0, left: 30),
            child: Image.network(
              'https://www.clipartmax.com/png/middle/94-946975_engineer-icon-user-engineer-icon.png',
              height: 160,
              width: 160,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 470.0, left: 62),
            child: Text(
              'Plumber',
              style: TextStyle(
                  color: Color(0xFF707070),
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),

          // NEW CONTAINER

          Padding(
            padding: const EdgeInsets.only(top: 330.0, left: 220, right: 20),
            child: Container(
              height: 190,
              width: 180,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 360.0, left: 255, right: 40),
            child: Image.network(
              'https://raw.githubusercontent.com/Ram-Bihari/images/main/engineer-3728996-3108795.jpg?token=ASQ4ZWYSTDTE2CAQUMCAZP3BMIEGE',
              width: 100,
              height: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 472.0, left: 248, right: 30),
            child: Text(
              'Electrician',
              style: TextStyle(
                  color: Color(0xFF707070),
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),

          // NEW CONTAINER

          Padding(
            padding: const EdgeInsets.only(top: 540.0, left: 20),
            child: Container(
              height: 190,
              width: 180,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 540.0, left: 55),
            child: Image.network(
              'https://raw.githubusercontent.com/Ram-Bihari/images/main/male-sweeper-4037959-3354846.jpg?token=ASQ4ZWY7SAWXKFMTB2K66FTBMIFYS',
              height: 140,
              width: 140,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 680.0, left: 62),
            child: Text(
              'Sweeper',
              style: TextStyle(
                  color: Color(0xFF707070),
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),

          // // NEW CONTAINER

          Padding(
            padding: const EdgeInsets.only(top: 540.0, left: 220, right: 20),
            child: Container(
              height: 190,
              width: 180,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 540.0, left: 235),
            child: Image.network(
              'https://raw.githubusercontent.com/Ram-Bihari/images/main/chef-348-666519.jpg?token=ASQ4ZWY2ZEYYUIKDLLRGJHLBMIGX6',
              height: 140,
              width: 137,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 683.0, left: 275),
            child: Text(
              'Chef',
              style: TextStyle(
                  color: Color(0xFF707070),
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
