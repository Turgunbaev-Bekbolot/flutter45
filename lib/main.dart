import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lesson27_image/cvetnoycont/cvetnyecont.dart';
import 'package:lesson27_image/firstcont/firstcont.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.west_outlined,
            color: Color(0xff131921),
          ),
          actions: [
            Icon(
              Icons.search,
              color: Color(0xff131921),
            ),
            Image.asset('assets/images/upanddown.jpg')
          ],
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Column(
            children: [
              Text(
                'Избранное',
                style: TextStyle(
                  color: Color(0xff131921),
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                '2 0',
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CvetnyeCont(
                  width: 50,
                  height: 32,
                  text1: 'Все',
                  color: Color(0xffF6F6FB),
                  color2: Colors.black,
                ),
                CvetnyeCont(
                  width: 78,
                  height: 32,
                  text1: 'Квесты',
                  color: Color(0xff64BDFF),
                  color2: Colors.white,
                ),
                CvetnyeCont(
                  width: 79,
                  height: 32,
                  text1: 'Здания',
                  color: Color(0xffFF7C74),
                  color2: Colors.white,
                ),
                CvetnyeCont(
                  width: 104,
                  height: 32,
                  text1: 'Памятники',
                  color: Color(0xff55E3DB),
                  color2: Colors.white,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  FirstContainer(
                      image1: 'assets/images/Mask Group.png',
                      text1: 'Прогулка по Москве,',
                      text2: 'не выходя из дома!',
                      image2: 'assets/images/home.webp'),
                  SizedBox(
                    height: 12,
                  ),
                  FirstContainer(
                      image1: 'assets/images/Mask Group (3).png',
                      text1: 'Прогулка по Москве,',
                      text2: 'не выходя из дома!',
                      image2: 'assets/images/vopros.png'),
                  SizedBox(
                    height: 12,
                  ),
                  FirstContainer(
                      image1: 'assets/images/Mask Group (2).png',
                      text1: 'Прогулка по Москве,',
                      text2: 'не выходя из дома!',
                      image2: 'assets/images/home(2).png'),
                  SizedBox(
                    height: 12,
                  ),
                  FirstContainer(
                      image1: 'assets/images/Mask Group (3).png',
                      text1: 'Прогулка по Москве,',
                      text2: 'не выходя из дома!',
                      image2: 'assets/images/man.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
