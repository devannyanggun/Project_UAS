import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Inbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(255, 245, 245, 1),
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blue),
        backgroundColor: Colors.red[100],
          title: Text(
            'Inbox',
          style: TextStyle(fontSize: 20,
          fontFamily: "Times New Roman",
          fontWeight: FontWeight.bold,
          color: Color.fromRGBO(121, 49, 49, 1)),
          ),
        ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.only(top: 30,left:10),
          child: Card(
            margin: EdgeInsets.only(left: 20,top: 20,right: 30,bottom: 250,),
            child: Column(
            children: <Widget> [
              Pesan(),
              Setpesan(),
              Ulasan(),
              Service(),
            ],
          ),
        ),
      ),
    );
  }
}

class Pesan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 10,top: 30,),
      child: Center(
        child: Row(
          children: <Widget> [
            Icon(Icons.message, size: 35, color: Color.fromRGBO(244, 199, 199, 1),
            ),
            Text('   Pesan', style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(121, 49, 49, 1),
              ),
            ),
            Icon(Icons.arrow_forward_ios, size: 20, color: Color.fromRGBO(244, 199, 199, 1),)
          ],
        ),
      ),
    );
  }
}
class Setpesan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10,),
      child: Center(
        child: Row(
          children: <Widget> [
            Icon(Icons.info, size: 35, color: Color.fromRGBO(244, 199, 199, 1),
            ),
            Text ('   Pengaturan Pesan', style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(121, 49, 49, 1),
            ),
            ),
            Icon(Icons.arrow_forward_ios, size: 20, color: Color.fromRGBO(244, 199, 199, 1),)
            ]
        ),
      ),
    );
  }
}
class Ulasan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10,top: 20,),
      child: Center(
        child: Row(
          children: <Widget> [
            Icon(Icons.star, size: 35, color: Color.fromRGBO(244, 199, 199, 1),
            ),
            Text ('   Ulasan', style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(121, 49, 49, 1),
            ),
            ),
            Icon(Icons.arrow_forward_ios, size: 20, color: Color.fromRGBO(244, 199, 199, 1),)
          ],
        ),
      ),
    );
  }
}
class Service extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10,top: 20,),
      child: Center(
        child: Row(
          children: <Widget> [
            Icon(Icons.help, size: 35, color: Color.fromRGBO(244, 199, 199, 1),
            ),
            Text ('   Bantuan', style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(121, 49, 49, 1),
            ),
            ),
            Icon(Icons.arrow_forward_ios, size: 20, color: Color.fromRGBO(244, 199, 199, 1),)
          ],
        ),
      ),
    );
  }
}


