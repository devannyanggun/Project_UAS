import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                margin: EdgeInsets.only(top: 20),
                child: Center(
                  child: Column(
                    children: <Widget> [
                      Text ("Menyediakan Beragam Buku Untuk Kamu Jelajahi",
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: "Times New Roman",
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(121, 49, 49, 1)),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Center(
                  child: Column(
                    children: <Widget> [
                      Text ("Temukan Buku yang Kamu Cari!",
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: "Times New Roman",
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(121, 49, 49, 1)),
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
                                Navigator.pushNamed(context, '/Login');
                              }
                          ),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Column(
                            children: <Widget> [
                              Text ("Or",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: "Times New Roman",
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(121, 49, 49, 1)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: SizedBox(
                          width: 170,
                          child: RaisedButton(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "Sign-up",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Times New Roman",
                                  color: Color.fromRGBO(121, 49, 49, 1),
                                ),
                              ),
                              color: Colors.white,
                              onPressed: () {
                                Navigator.pushNamed(context, '/Signup');
                              }
                          ),
                        ),
                      ),
                    ],
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
