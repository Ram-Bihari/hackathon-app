import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ramu_ki_chai/Screens/Profile/profile_pic.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var color = Color(0xFFFF3CA20);

    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        iconTheme: IconThemeData(color: color),
        centerTitle: true,
        title: Text(
          'Account',
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
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.userAlt,
                      color: color,
                    ),
                    SizedBox(width: 20),
                    Expanded(
                        child: Text(
                      'Name: Ramdev',
                      style: TextStyle(fontSize: 18),
                    )),
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
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.lock,
                      color: color,
                    ),
                    SizedBox(width: 20),
                    Expanded(
                        child: Text(
                      '********',
                      style: TextStyle(fontSize: 18),
                    )),
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
                      FontAwesomeIcons.solidCalendarAlt,
                      color: color,
                    ),
                    SizedBox(width: 20),
                    Expanded(
                        child: Text(
                      '17/10/2007',
                      style: TextStyle(fontSize: 18),
                    )),
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
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.mailBulk,
                      color: color,
                    ),
                    SizedBox(width: 20),
                    Expanded(
                        child: Text(
                      'flexible@baba.com',
                      style: TextStyle(fontSize: 18),
                    )),
                    Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Container(
                child: Center(
                    child: Text(
                  'Connect Instagram',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
                height: 60,
                width: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [Colors.red, Colors.purple],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Container(
                child: Center(
                    child: Text(
                  'Connect Facebook',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
                height: 60,
                width: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [(Color(0xFF374ABE)), (Color(0xFF64B6FF))],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
