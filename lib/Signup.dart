import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  createAlertDialog (BuildContext context) {

    return showDialog(context: context, builder: (context) {
      return AlertDialog(
        backgroundColor: Color.fromRGBO(255, 245, 245, 1),
        title: Text("Selamat! Registrasi Kamu Berhasil", style: TextStyle(
            fontSize: 15,
            fontFamily: "Times New Roman",
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(121, 49, 49, 1),
          ),
        ),
        actions: <Widget> [
          MaterialButton (
            elevation: 5.0,
            child: Text('Login', style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              fontFamily: "Times New Roman",
              color: Color.fromRGBO(121, 49, 49, 1),
            ),),
              onPressed: () {
                Navigator.pushNamed(context, '/Login');
              }
          )
        ],
      );
      });
  }


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
                "assets/registpict.png",
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
                            hintText: "Email",
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
                margin: EdgeInsets.only(top: 50),
                child: SizedBox(
                  width: 170,
                  child: RaisedButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Sign-Up",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Times New Roman",
                          color: Color.fromRGBO(121, 49, 49, 1),
                        ),
                      ),
                      color: Colors.white,
                      onPressed: () {
                        createAlertDialog(context);
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