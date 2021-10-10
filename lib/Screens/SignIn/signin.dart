import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Image.network(
                'https://raw.githubusercontent.com/Ram-Bihari/images/main/undraw_Access_account_re_8spm.png?token=ASQ4ZW6HP6AOF2VF4MVNDSTBMKMIW',
                // height: 40,
                // width: 40,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 510, left: 20, right: 20),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(120))),
                child: buildTextField3()),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 590, left: 20, right: 20),
              child: SingleChildScrollView(
                  child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  prefixIcon: Icon(Icons.lock, color: Color(0xFFF3CA20)),
                  hintText: "Enter your Password",
                  hintStyle: TextStyle(
                      color: Color(0xFFF3CA20), fontWeight: FontWeight.bold),
                  filled: true,
                  fillColor: Colors.yellow[100],
                ),
                obscureText: true,
              ))),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 14, left: 150),
              child: Text(
                'Log In',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 690.0, left: 220),
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(primary: Color(0xFFF3CA20)),
              icon: Icon(FontAwesomeIcons.signOutAlt),
              label: Text(
                'Sign Up',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 690.0, left: 100),
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(primary: Color(0xFFF3CA20)),
              icon: Icon(
                FontAwesomeIcons.signInAlt,
              ),
              label: Text(
                'Login',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 730.0, left: 100),
            child: MyAlert(),
          ),
        ],
      ),
    );
  }
}

Widget buildTextField3() => TextFormField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(25),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(25),
        ),
        prefixIcon: Icon(Icons.person, color: Color(0xFFF3CA20)),
        hintText: "Enter your Name",
        hintStyle:
            TextStyle(color: Color(0xFFF3CA20), fontWeight: FontWeight.bold),
        filled: true,
        fillColor: Colors.yellow[100],
      ),
    );

class MyAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ElevatedButton.icon(
        label: Text('Login With Facebook'),
        icon: Center(child: Icon(FontAwesomeIcons.facebookSquare)),
        onPressed: () {
          showAlertDialog(context);
        },
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = FlatButton(
    child: Text("Ok Sorry"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Shaanpatti mat kar"),
    content: Text("Chup chaap email daal. Bada aaya"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
