import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'profile_pic.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var color = Color(0xFFFF3CA20);

    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        iconTheme: IconThemeData(color: color),
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(
            color: color,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            ProfilePic(),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  backgroundColor: HexColor('#F5F5F5'),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/account');
                },
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.child,
                      color: color,
                    ),
                    SizedBox(width: 20),
                    Expanded(child: Text('Account')),
                    Icon(FontAwesomeIcons.arrowRight),
                    Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  backgroundColor: HexColor('#F5F5F5'),
                ),
                onPressed: () {
                  // Navigator.pushNamed(context, '/notifs');
                },
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.bell,
                      color: color,
                    ),
                    SizedBox(width: 20),
                    Expanded(child: Text('Notifications')),
                    Icon(FontAwesomeIcons.arrowRight),
                    Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  backgroundColor: HexColor('#F5F5F5'),
                ),
                onPressed: () {
                  // Navigator.pushNamed(context, '/tms');
                },
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.questionCircle,
                      color: color,
                    ),
                    SizedBox(width: 20),
                    Expanded(child: Text('Terms and Conditions')),
                    Icon(FontAwesomeIcons.arrowRight),
                    Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  backgroundColor: HexColor('#F5F5F5'),
                ),
                onPressed: () {
                  Navigator.popAndPushNamed(context, '/login');
                },
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.arrowCircleLeft,
                      color: color,
                    ),
                    SizedBox(width: 20),
                    Expanded(child: Text('Log Out')),
                    Icon(FontAwesomeIcons.arrowRight),
                    Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
