import 'package:flutter/material.dart';

class BukuMenuList extends StatelessWidget {
  final String tittle;
  final List<String> assets;

  BukuMenuList({
    @required this.tittle,
    @required this.assets,
    List<String> kategoriNovelImages,
    List<String> kategoriKesehatanImages,
    List<String> kategoriPendidikanImages,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Container(
              height: 200,
              color: Colors.pink[50],
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  10.0, 10.0, 0.0, 10.0),
                              child: Text(
                                tittle,
                                semanticsLabel: 'Novel',
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: InkWell(
                                child: Text(
                                  'Lihat Semua',
                                  style: TextStyle(
                                      fontSize: 17.0, color: Colors.black),
                                ),
                                onTap: () {
                                  debugPrint('Lihat Semua Ditekan');
                                },
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              height: 150,
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: assets.length,
                                itemBuilder: (BuildContext context, index) {
                                  return GestureDetector(
                                    child: Container(
                                      width: 120,
                                      child: Card(
                                        child: new Image.asset(
                                          assets[index],
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    onTap: () {
                                      debugPrint("$index");
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
