import 'package:flutter/material.dart';
import 'package:ramu_ki_chai/ProfileScreens/account.dart';
import 'package:ramu_ki_chai/Screens/Helpers/plumbers.dart';
import 'package:ramu_ki_chai/Screens/Profile/profile_home.dart';
import 'Screens/SignIn/signin.dart';
import 'package:ramu_ki_chai/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetHalp',
      initialRoute: '/login',
      routes: {
        '/home': (context) => HomePage(),
        '/login': (context) => SignIn(),
        '/profile': (context) => Profile(),
        '/account': (context) => Account(),
        '/plumbers': (context) => Plumbers(),
      },
      home: HomePage(),
    );
  }
}
