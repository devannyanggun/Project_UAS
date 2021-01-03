import 'package:flutter/material.dart';
import 'buku_menu_list.dart';
import 'buku_carousel.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 245, 245, 1),
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blue),
        backgroundColor: Colors.red[100],
        leading: Icon(Icons.menu, color: Colors.red[300]),
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
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person, color: Colors.red[300]),
            onPressed: () {},
          )
        ],
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red[100],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.red[300]),
            title: Text('Home', style: TextStyle(color: Colors.white)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart, color: Colors.red[300]),
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
      body: ListView(
        children: <Widget>[
          BukuCarousel(),
          BukuMenuList(
            tittle: "Novel",
            assets: kategoriNovelImages,
          ),
          BukuMenuList(
            tittle: "Kesehatan",
            assets: kategoriKesehatanImages,
          ),
          BukuMenuList(
            tittle: "Pendidikan",
            assets: kategoriPendidikanImages,
          ),
        ],
      ),
    );
  }

  List<String> kategoriNovelImages = [
    "assets/nov1.jpg",
    "assets/nov2.jpg",
    "assets/nov3.jpg",
    "assets/nov4.jpg",
    "assets/nov5.jpg",
    "assets/nov6.jpg",
  ];

  List<String> kategoriKesehatanImages = [
    "assets/kes1.jpg",
    "assets/kes2.jpg",
    "assets/kes3.jpg",
    "assets/kes4.jpg",
    "assets/kes5.jpg",
  ];

  List<String> kategoriPendidikanImages = [
    "assets/pen1.jpg",
    "assets/pen2.jpg",
    "assets/pen3.jpg",
    "assets/pen4.jpg",
    "assets/pen5.jpg",
  ];
}
