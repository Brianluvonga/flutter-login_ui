import 'package:flutter/material.dart';
import 'package:login_ui/screens/register.dart';

class Widgets extends StatefulWidget {
  const Widgets({Key? key}) : super(key: key);

  @override
  _WidgetsState createState() => _WidgetsState();
}

class _WidgetsState extends State<Widgets> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Widget username() {
    return TextFormField(
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.person),
        // fillColor: Colors.white,
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        filled: true,
        hintText: 'username',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        labelText: 'Username',
      ),
      keyboardType: TextInputType.name,
      style: TextStyle(fontSize: 26, color: Colors.white),
      cursorColor: Colors.white,
    );
  }

  Widget emailAddress() {
    return TextFormField(
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.person),
        // fillColor: Colors.white,
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        filled: true,
        hintText: 'Email',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        labelText: 'Email',
      ),
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(fontSize: 26, color: Colors.white),
      cursorColor: Colors.white,
    );
  }

  Widget phoneNO() {
    return TextFormField(
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.person),
        // fillColor: Colors.white,
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        filled: true,
        hintText: 'Phone Number',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        labelText: 'Phone Number',
      ),
      keyboardType: TextInputType.phone,
      style: TextStyle(fontSize: 26, color: Colors.white),
      cursorColor: Colors.white,
    );
  }

  Widget gender() {
    return TextFormField(
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.person),
        // fillColor: Colors.white,
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        filled: true,
        hintText: 'Male or Female',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        labelText: 'Gender',
      ),
      keyboardType: TextInputType.text,
      style: TextStyle(fontSize: 26, color: Colors.white),
      cursorColor: Colors.white,
    );
  }

  Widget password() {
    return TextFormField(
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.person),
        // fillColor: Colors.white,
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        filled: true,
        hintText: 'Password',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        labelText: 'Password',
      ),
      keyboardType: TextInputType.visiblePassword,
      style: TextStyle(fontSize: 26, color: Colors.white),
      cursorColor: Colors.white,
    );
  }

  Widget notAccomplished() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => RegisterUI()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Don\'t have an account ?',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'Register',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
    );
  }
}
