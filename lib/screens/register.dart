import 'package:flutter/material.dart';
import 'package:login_ui/screens/login.dart';

// ignore: must_be_immutable
class RegisterUI extends StatefulWidget {
  TextStyle style = TextStyle(fontFamily: 'times');
  RegisterUI({Key? key}) : super(key: key);

  @override
  _RegisterUIState createState() => _RegisterUIState();
}

class _RegisterUIState extends State<RegisterUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          title: Text(
            "Register UI",
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
                  SizedBox(height: 10),
                  // username(),
                  username(),
                  SizedBox(height: 15),
                  emailAddress(),
                  SizedBox(height: 15),
                  phoneNO(),
                  SizedBox(height: 15),
                  gender(),
                  SizedBox(height: 15),
                  password(),
                  SizedBox(height: 16),
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.white,
                    child: MaterialButton(
                      padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 10),
                      minWidth: 200,
                      onPressed: () {},
                      child: Text(
                        "Register",
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
          suffixIcon: Icon(Icons.person, color: Colors.white),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
            borderSide: BorderSide(width: 1, color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
            borderSide: BorderSide(width: 1, color: Colors.white),
          ),
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          filled: true,
          hintText: 'username',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
          labelText: 'Username',
          labelStyle: TextStyle(color: Colors.white)),
      keyboardType: TextInputType.name,
      style: TextStyle(fontSize: 16, color: Colors.white, fontFamily: 'times'),
      cursorColor: Colors.white,
    );
  }

  Widget emailAddress() {
    return TextFormField(
      decoration: InputDecoration(
          suffixIcon: Icon(Icons.mail, color: Colors.white),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
            borderSide: BorderSide(width: 1, color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
            borderSide: BorderSide(width: 1, color: Colors.white),
          ),
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          filled: true,
          hintText: 'Email',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
          labelText: 'Email',
          labelStyle: TextStyle(color: Colors.white)),
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(fontSize: 16, color: Colors.white, fontFamily: 'times'),
      cursorColor: Colors.white,
    );
  }

  Widget phoneNO() {
    return TextFormField(
      decoration: InputDecoration(
          suffixIcon: Icon(Icons.phone, color: Colors.white),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
            borderSide: BorderSide(width: 1, color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
            borderSide: BorderSide(width: 1, color: Colors.white),
          ),
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          filled: true,
          hintText: 'Phone Number',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
          labelText: 'Phone Number',
          labelStyle: TextStyle(color: Colors.white)),
      keyboardType: TextInputType.phone,
      style: TextStyle(fontSize: 16, color: Colors.white, fontFamily: 'times'),
      cursorColor: Colors.white,
    );
  }

  Widget gender() {
    return TextFormField(
      decoration: InputDecoration(
          suffixIcon: Icon(Icons.person_add, color: Colors.white),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
            borderSide: BorderSide(width: 1, color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
            borderSide: BorderSide(width: 1, color: Colors.white),
          ),
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          filled: true,
          hintText: 'Male or Female',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
          labelText: 'Gender',
          labelStyle: TextStyle(color: Colors.white)),
      keyboardType: TextInputType.text,
      style: TextStyle(fontSize: 16, color: Colors.white, fontFamily: 'times'),
      cursorColor: Colors.white,
    );
  }

  Widget password() {
    return TextFormField(
      decoration: InputDecoration(
          suffixIcon: Icon(Icons.lock, color: Colors.white),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
            borderSide: BorderSide(width: 1, color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
            borderSide: BorderSide(width: 1, color: Colors.white),
          ),
          // fillColor: Colors.white,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          filled: true,
          hintText: 'Password',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
          labelText: 'Password',
          labelStyle: TextStyle(color: Colors.white)),
      keyboardType: TextInputType.visiblePassword,
      style: TextStyle(fontSize: 16, color: Colors.white, fontFamily: 'times'),
      cursorColor: Colors.white,
    );
  }

  Widget notAccomplished() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginUI()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Already have an account ?',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'times'),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'Login',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'times'),
            ),
          ],
        ),
      ),
    );
  }
}
