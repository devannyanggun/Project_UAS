import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(255, 245, 245, 1),
      body: Container(
        margin: EdgeInsets.only(top: 70),
        child: Center(
          child: Column(
            children: <Widget> [
              Image.asset(
                "assets/logo.png",
                width: 250,
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                width: 300,
                height: 60,
                child: Center(
                  child: Column(
                    children: <Widget> [
                      new TextField(
                        decoration: new InputDecoration(
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(50),
                              ),
                            ),
                            filled: true,
                            hintStyle: new TextStyle(color: Colors.grey[800]),
                            hintText: "Username",
                            fillColor: Colors.white70),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 300,
                height: 60,
                child: Center(
                  child: Column(
                    children: <Widget> [
                      new TextField(
                        decoration: new InputDecoration(
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(50),
                              ),
                            ),
                            filled: true,
                            hintStyle: new TextStyle(color: Colors.grey[800]),
                            hintText: "Password",
                            fillColor: Colors.white70),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 70),
                child: SizedBox(
                  width: 170,
                  child: RaisedButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Times New Roman",
                          color: Color.fromRGBO(121, 49, 49, 1),
                        ),
                      ),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pushNamed(context, '/Menu');
                      }
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
