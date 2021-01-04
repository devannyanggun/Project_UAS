import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';

class ScanQR extends StatefulWidget {
  @override
  _ScanQRState createState() => _ScanQRState();
}

class _ScanQRState extends State<ScanQR> {
  String CodeQR = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Color.fromRGBO(255, 245, 245, 1),
          resizeToAvoidBottomPadding: false,
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.blue),
            backgroundColor: Colors.red[100],
            leading: IconButton(
              icon: Icon(Icons.menu, color: Colors.black,),
              onPressed: () {
                Navigator.pushNamed(context, '/Line3');
              },
            ),
            title: Text(
              'BUKUPEDIA',
              style: TextStyle(fontSize: 20,
                  fontFamily: "Times New Roman",
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(121, 49, 49, 1)),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.chat, color: Colors.red[300]),
                onPressed: () {
                  Navigator.pushNamed(context, '/Inbox');
                },
              ),
              IconButton(
                icon: Icon(Icons.person, color: Colors.red[300]),
                onPressed: () {
                  Navigator.pushNamed(context, '/Profile');
                },
              )
            ],
            centerTitle: true,
          ),
          body: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  "User",
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Text(
                  CodeQR,
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  color: Colors.red[300],
                  padding: EdgeInsets.all(15.0),
                  onPressed: () async {
                    String Result = await BarcodeScanner.scan();
                    setState(() {
                      CodeQR = Result;
                    });
                  },
                  child: Text(
                    "Open Scanner",
                    style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),),
                )
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.red[100],
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.red[300]),
                title: Text('Home', style: TextStyle(color: Colors.white)),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.scanner, color: Colors.red[300]),
                title: Text('Keranjang', style: TextStyle(color: Colors.white)),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications, color: Colors.red[300]),
                title: Text('Notifikasi', style: TextStyle(color: Colors.white)),
              ),
            ],
            onTap: (int tekanBottom) {
              debugPrint("Tombol $tekanBottom yang ditekan");
            },
          ),
    );
  }
}
