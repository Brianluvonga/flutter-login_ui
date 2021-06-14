import 'package:flutter/material.dart';
import 'package:login_ui/screens/register.dart';

class LoginUI extends StatefulWidget {
  LoginUI({Key? key}) : super(key: key);

  @override
  _LoginUIState createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  final TextEditingController _passwordController = new TextEditingController();
  TextStyle style = TextStyle(fontFamily: 'times');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          title: Text(
            "Login UI",
            style: TextStyle(fontFamily: 'times'),
          ),
          centerTitle: true,
          backgroundColor: Colors.amber),
      body: Container(
        constraints: BoxConstraints.expand(
          height: MediaQuery.of(context).size.height,
        ),
        decoration: BoxDecoration(
          color: Colors.amberAccent,
        ),
        child: Form(
          // ignore: deprecated_member_use
          autovalidate: true,
          // key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(32, 96, 32, 0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20),
                  // username(),
                  username(),
                  SizedBox(height: 20),
                  password(),
                  SizedBox(height: 10),
                  SizedBox(height: 16),
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.white,
                    child: MaterialButton(
                      padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10),
                      minWidth: 200,
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: 'times'),
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  notAccomplished(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget username() {
    return TextFormField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
            borderSide: BorderSide(width: 1, color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
            borderSide: BorderSide(width: 1, color: Colors.white),
          ),
          suffixIcon: Icon(
            Icons.person,
            color: Colors.white,
          ),
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          filled: true,
          hintText: 'Username',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
          labelText: 'Username',
          labelStyle: TextStyle(color: Colors.white)),
      keyboardType: TextInputType.name,
      style: TextStyle(fontSize: 16, color: Colors.white, fontFamily: 'times'),
      cursorColor: Colors.white,
    );
  }

  Widget password() {
    return TextFormField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
            borderSide: BorderSide(width: 1, color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
            borderSide: BorderSide(width: 1, color: Colors.white),
          ),
          suffixIcon: Icon(Icons.lock, color: Colors.white),
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          filled: true,
          hintText: 'Password',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
          labelText: 'Password',
          labelStyle: TextStyle(color: Colors.white)),
      obscureText: true,
      controller: _passwordController,
      keyboardType: TextInputType.text,
      style: TextStyle(fontSize: 16, color: Colors.white, fontFamily: 'times'),
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
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontFamily: 'times'),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'Register',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'times'),
            ),
          ],
        ),
      ),
    );
  }
}
