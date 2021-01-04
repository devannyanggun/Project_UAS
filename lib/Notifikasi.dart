import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Notif extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Notif> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Color(0xffFFF5F5),
        appBar: AppBar(
          backgroundColor: Color(0xffFFFCFC),
          //centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.brown,
            ),
            onPressed: () {
              Navigator.pushNamed(context,
                  '/home'); 
            },
          ),
          title: Text("Notifikasi",
            style: TextStyle(color: Color(0xff865A61), fontSize: 18),
          ),
        ),

        body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

                  Container(
                    child: Container(
                      padding: EdgeInsets.all(30),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFCFC),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only( left: 70, right: 90),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(
                              Icons.person ,
                              size: 60,
                              color: Color(0xff865A61),
                            ),
                            Text(
                              'LULA_BUCAIN',
                              style: TextStyle(color: Color(0xff865A61), fontSize: 20),
                            ),], ), ), ),
                  ),

                  Container(
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 20 ),
                      padding: EdgeInsets.all(30),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xffFFFCFC),
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only( right: 150),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(
                              Icons.book,
                              size: 50,
                              color: Color(0xffF4C7C7),
                            ),
                            Text(
                              'BukuPedia',
                              style: TextStyle(color: Color(0xff865A61), fontSize: 20),
                            )
                          ], ), ), ),
                  ),

                  Container(
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 10 ),
                      padding: EdgeInsets.all(30),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xffFFFCFC),
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only( right: 150),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              size: 60,
                              color: Color(0xffF4C7C7),
                            ),
                            Text(
                              'Beri Renting',
                              style: TextStyle(color: Color(0xff865A61), fontSize: 20),
                            )
                          ], ), ), ),
                  ),

                ])));
  }
}