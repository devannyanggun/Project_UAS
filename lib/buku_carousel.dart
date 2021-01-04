import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class BukuCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 160,
      child: Carousel(
        images: [
          Image.asset(
            'assets/adv1.png',
            fit: BoxFit.fill,
          ),
          Image.asset(
            'assets/adv2.png',
            fit: BoxFit.fill,
          ),
          Image.asset(
            'assets/adv3.png',
            fit: BoxFit.fill,
          ),
        ],
        dotSize: 4.0,
        dotSpacing: 20,
        dotColor: Colors.red[300],
        indicatorBgPadding: 5.0,
        dotBgColor: Colors.black.withOpacity(0.2),
        autoplay: true,
        animationCurve: Curves.bounceIn,
        animationDuration: Duration(milliseconds: 5),
      ),
    );
  }
}
