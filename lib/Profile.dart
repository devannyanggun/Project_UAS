import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'db.dart';
import 'package:qr_flutter/qr_flutter.dart';


class Profile extends StatelessWidget {
  //DUMMY DATA YANG AKAN DITAMPILKAN SEBELUM MELAKUKAN HIT KE API
  //ADAPUN FORMAT DATANYA MENGIKUTI STRUKTU YANG SUDAH DITETAPKAN PADA ProfileMODEL
  final data = [
    EmployeeModel(
      id: "1",
      Nama: "Lula Bucin",
      Saldo: "100000",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                '/home'); //memanggil rute home yang telah dibuat diatas
          },
        ),
        title: Text("Akun",
          style: TextStyle(color: Color(0xff865A61), fontSize: 18),
        ),
      ),
      //ADAPUN UNTUK LOOPING DATA PEGAWAI, KITA GUNAKAN LISTVIEW BUILDER
      //KARENA WIDGET INI SUDAH DILENGKAPI DENGAN FITUR SCROLLING
      body: ListView.builder(
        itemCount: data.length, //MENGHITUNG JUMLAH DATA YANG AKAN DITAMPILKAN
        //LOOPING DATA
        itemBuilder: (context, i) {
          //KEMUDIAN TAMPILKAN DATA PEGAWAI BERDASARKAN INDEX YANG DISIMPAN DI DALAM VARIABLE I
          return Card(
            child: Column(
              children: <Widget> [
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
                            '${data[i].Nama}',
                            style: TextStyle(color: Color(0xff865A61), fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  child: QrImage(
                    data: '${data[i].Nama}',
                  ),
                ),
                Container(
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 20 ),
                    padding: EdgeInsets.all(30),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xffFFFCFC),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only( right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Icon(
                            Icons.monetization_on,
                            size: 50,
                            color: Color(0xffF4C7C7),
                          ),
                          Text(
                            '${data[i].Saldo}',
                            style: TextStyle(color: Color(0xff865A61), fontSize: 20),
                          )
                        ], ), ), ),
                ),

                Container(
                  child: Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top:40),
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFCFC),
                      //borderRadius: BorderRadius.circular(30)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only( right: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Icon(
                            Icons.person,
                            size: 40,
                            color: Color(0xffF4C7C7),
                          ),
                          Text(
                            'Profil Saya',
                            style: TextStyle(color: Color(0xff865A61), fontSize: 20),
                          )
                        ], ), ), ),
                ),
                Container(
                  child: Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFCFC),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only( right: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Icon(
                            Icons.local_activity,
                            size: 40,
                            color: Color(0xffF4C7C7),
                          ),
                          Text(
                            'Vocer Saya',
                            style: TextStyle(color: Color(0xff865A61), fontSize: 20),
                          )
                        ], ), ), ),
                ),
                Container(
                  child: Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFCFC),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only( right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Icon(
                            Icons.g_translate,
                            size: 40,
                            color: Color(0xffF4C7C7),
                          ),
                          Text(
                            'Pilihan Bahasa',
                            style: TextStyle(color: Color(0xff865A61), fontSize: 20),
                          )
                        ], ), ), ),
                ),
                Container(
                  child: Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFCFC),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only( right: 80),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Icon(
                            Icons.check_box,
                            size: 40,
                            color: Color(0xffF4C7C7),
                          ),
                          Text(
                            'Pesanan',
                            style: TextStyle(color: Color(0xff865A61), fontSize: 20),
                          )
                        ], ), ), ),
                ),
                Container(
                  child: Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFCFC),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only( right: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            size: 40,
                            color: Color(0xffF4C7C7),
                          ),
                          Text(
                            'Beri Bimtang',
                            style: TextStyle(color: Color(0xff865A61), fontSize: 20),
                          )
                        ], ), ), ),
                ),

                Container(
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom:20),
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xff865A61),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only( right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            'Log-out',
                            style: TextStyle(color: Color(0xffFFFCFC), fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
