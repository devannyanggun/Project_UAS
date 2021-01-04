import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Pilihan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 245, 245, 1),
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blue),
        backgroundColor: Colors.red[100],
        title: Text(
          'Menu',
          style: TextStyle(
              fontSize: 20,
              fontFamily: "Times New Roman",
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(121, 49, 49, 1)),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.only(top: 30, left: 10),
        child: Card(
          margin: EdgeInsets.only(
            left: 20,
            top: 20,
            right: 30,
            bottom: 250,
          ),
          child: Column(
            children: <Widget>[
              Akun(),
              Help(),
              Histori(),
              Setting(),
            ],
          ),
        ),
      ),
    );
  }
}

class Akun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
        bottom: 10,
        top: 30,
      ),
      child: Center(
        child: Row(
          children: <Widget>[
            Icon(
              Icons.recent_actors,
              size: 35,
              color: Color.fromRGBO(244, 199, 199, 1),
            ),
            Text(
              '   Ganti Akun',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(121, 49, 49, 1),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: Color.fromRGBO(244, 199, 199, 1),
            )
          ],
        ),
      ),
    );
  }
}

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Center(
        child: Row(children: <Widget>[
          Icon(
            Icons.help,
            size: 35,
            color: Color.fromRGBO(244, 199, 199, 1),
          ),
          Text(
            '   Bantuan & Saran',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(121, 49, 49, 1),
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 20,
            color: Color.fromRGBO(244, 199, 199, 1),
          )
        ]),
      ),
    );
  }
}

class Histori extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
        top: 20,
      ),
      child: Center(
        child: Row(
          children: <Widget>[
            Icon(
              Icons.history,
              size: 35,
              color: Color.fromRGBO(244, 199, 199, 1),
            ),
            Text(
              '   History',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(121, 49, 49, 1),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: Color.fromRGBO(244, 199, 199, 1),
            )
          ],
        ),
      ),
    );
  }
}

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
        top: 20,
      ),
      child: Center(
        child: Row(
          children: <Widget>[
            Icon(
              Icons.settings,
              size: 35,
              color: Color.fromRGBO(244, 199, 199, 1),
            ),
            Text(
              '   Setelan',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(121, 49, 49, 1),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: Color.fromRGBO(244, 199, 199, 1),
            )
          ],
        ),
      ),
    );
  }
}
