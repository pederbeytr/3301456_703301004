import 'dart:math';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:vizedeneme1/main.dart';
import 'package:vizedeneme1/second.dart';

void main() {
  runApp(MaterialApp(home: Elektronik()));
}

//yukarda home sağında const var
class Elektronik extends StatelessWidget {
  List<Map> kate = [
    {
      "isim": "25Tl=>20Tl",
      "foto": "assets/images/tras.PNG",
      "sayfa": "Gratis :Gillette Fusion5 ProGlide"
    },
    {
      "isim": "45Tl=>34Tl",
      "foto": "assets/images/kop.PNG",
      "sayfa": "Gratis: Arko Men Tıraş Köpüğü "
    },
    {
      "isim": "42Tl=>39Tl",
      "foto": "assets/images/far.PNG",
      "sayfa": "Gratis: LYKD 9'lu Far Paleti"
    },
    {
      "isim": "169Tl=>139Tl",
      "foto": "assets/images/golge.PNG",
      "sayfa": "Cosmetika: Pastel Profashion Nude Single"
    },
    {
      "isim": "139Tl=>97Tl",
      "foto": "assets/images/ru.PNG",
      "sayfa": "Gratis: Cecile Coco Nude "
    },
    {
      "isim": "132Tl=>93Tl",
      "foto": "assets/images/maskara.PNG",
      "sayfa": "Cosmetica: Golden Rose Nude Look Full"
    },
    {
      "isim": "15Tl=>13Tl",
      "foto": "assets/images/nude1.PNG",
      "sayfa": "Cosmetica: LYKD Mat Ruj 114"
    },
    {
      "isim": "14Tl=>11Tl",
      "foto": "assets/images/palet.PNG",
      "sayfa": "Gratis: wet n wild Color Icon Eyeshadow  "
    },
  ];

  //const second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'İndirim Dünyası',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.greenAccent, Colors.orange])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            title: const Text(
              "İndirim Dünyası",
              style: TextStyle(
                fontSize: 40,
                fontStyle: FontStyle.italic,
                color: Colors.greenAccent,
              ),
            ),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //geri ikonu
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 30),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        onPrimary: Colors.white,
                        shadowColor: Colors.transparent,
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.3)),
                        minimumSize: Size(20, 10),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => second()));
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black87,
                        size: 30,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 1, left: 110.0, bottom: 10),
                    child: Text(
                      "Elektronik",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.white),
                    ),
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 23.0),
                        child: Container(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                //1. sütun
                                Row(
                                  children: [
                                    //kozmetik yeri
                                    Column(
                                      children: [
                                        Text(
                                          "Teknosa :Honor Magicbook X15",
                                          style: TextStyle(
                                              fontSize: 20,
                                              backgroundColor: Colors.white),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: 200,
                                          width: 350,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            color: Colors.white,
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                      "assets/images/honor.jpg")
                                                  as ImageProvider,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          color: Colors.grey,
                                          child: Center(
                                            child: Text(
                                              " İndirim Bedeli: 7000Tl=>4560Tl",
                                              style: TextStyle(
                                                fontSize: 25,
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.w900,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 100,
                                ),

                                Row(
                                  children: [
                                    //kozmetik yeri
                                    Column(
                                      children: [
                                        Text(
                                          "Vatan Bilgisayar:MacBook Pro 2022 ",
                                          style: TextStyle(
                                              fontSize: 20,
                                              backgroundColor: Colors.white),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: 200,
                                          width: 350,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            color: Colors.black,
                                            image: DecorationImage(
                                              fit: BoxFit.fitWidth,
                                              image: AssetImage(
                                                      "assets/images/macbookpro.jpg")
                                                  as ImageProvider,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          color: Colors.grey,
                                          child: Center(
                                            child: Text(
                                              " İndirim Bedeli: 16K Tl => 15K Tl",
                                              style: TextStyle(
                                                fontSize: 25,
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.w900,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 100,
                                ),
                                //2. satır
                                Row(
                                  children: [
                                    //kozmetik yeri
                                    Column(
                                      children: [
                                        Text(
                                          "Vatan Bilgisayar :Lenova İp Gaming 3",
                                          style: TextStyle(
                                              fontSize: 20,
                                              backgroundColor: Colors.white),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: 200,
                                          width: 350,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            color: Colors.white,
                                            image: DecorationImage(
                                              fit: BoxFit.fitHeight,
                                              image: AssetImage(
                                                  "assets/images/lenova.jpg")
                                                  as ImageProvider,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          color: Colors.grey,
                                          child: Center(
                                            child: Text(
                                              " İndirim Bedeli: 9000Tl=>8560Tl",
                                              style: TextStyle(
                                                fontSize: 25,
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.w900,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 100,
                                ),
                                Row(
                                  children: [
                                    //kozmetik yeri
                                    Column(
                                      children: [
                                        Text(
                                          "Monster: Monster Abra A13",
                                          style: TextStyle(
                                              fontSize: 20,
                                              backgroundColor: Colors.white),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: 200,
                                          width: 350,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            color: Colors.white,
                                            image: DecorationImage(
                                              fit: BoxFit.fitHeight,
                                              image: AssetImage(
                                                      "assets/images/monster.jpg")
                                                  as ImageProvider,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          color: Colors.grey,
                                          child: Center(
                                            child: Text(
                                              " İndirim Bedeli: 30K Tl => 25K Tl",
                                              style: TextStyle(
                                                fontSize: 25,
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.w900,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 100,
                                ),
                                //3. satır
                                Row(
                                  children: [
                                    //kozmetik yeri
                                    Column(
                                      children: [
                                        Text(
                                          "Troy Store: MacBook Pro 2021 13 Inch",
                                          style: TextStyle(
                                              fontSize: 20,
                                              backgroundColor: Colors.white),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: 200,
                                          width: 350,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            color: Colors.blue,
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                      "assets/images/macbookm.jpeg")
                                                  as ImageProvider,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          color: Colors.grey,
                                          child: Center(
                                            child: Text(
                                              " İndirim Bedeli: 12K Tl => 11K Tl",
                                              style: TextStyle(
                                                fontSize: 25,
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.w900,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 100,
                                ),

                                Row(
                                  children: [
                                    //kozmetik yeri
                                    Column(
                                      children: [
                                        Text(
                                          "Vatan Bilgisayar: Casper Gaming Laptop",
                                          style: TextStyle(
                                              fontSize: 20,
                                              backgroundColor: Colors.white),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: 200,
                                          width: 350,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            color: Colors.white,
                                            image: DecorationImage(
                                              fit: BoxFit.fitHeight,
                                              image: AssetImage(
                                                      "assets/images/casper.png")
                                                  as ImageProvider,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          color: Colors.grey,
                                          child: Center(
                                            child: Text(
                                              " İndirim Bedeli: 15K Tl => 13 KTl",
                                              style: TextStyle(
                                                fontSize: 25,
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.w900,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 100,
                                ),

                                Row(
                                  children: [
                                    //kozmetik yeri
                                    Column(
                                      children: [
                                        Text(
                                          "Teknosa :Toshiba Gaming Laptop",
                                          style: TextStyle(
                                              fontSize: 20,
                                              backgroundColor: Colors.white),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: 200,
                                          width: 350,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            color: Colors.white,
                                            image: DecorationImage(
                                              fit: BoxFit.fitHeight,
                                              image: AssetImage(
                                                      "assets/images/toshiba.jpg")
                                                  as ImageProvider,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          color: Colors.grey,
                                          child: Center(
                                            child: Text(
                                              " İndirim Bedeli: 9000Tl=>8560Tl",
                                              style: TextStyle(
                                                fontSize: 25,
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.w900,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 100,
                                ),

                                Row(
                                  children: [
                                    //kozmetik yeri
                                    Column(
                                      children: [
                                        Text(
                                          "Media Markt: MSI Gaming Laptop",
                                          style: TextStyle(
                                              fontSize: 20,
                                              backgroundColor: Colors.white),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: 200,
                                          width: 350,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            color: Colors.white,
                                            image: DecorationImage(
                                              fit: BoxFit.fitHeight,
                                              image: AssetImage(
                                                      "assets/images/msi.jpg")
                                                  as ImageProvider,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          color: Colors.grey,
                                          child: Center(
                                            child: Text(
                                              " İndirim Bedeli: 7560Tl=>5560Tl",
                                              style: TextStyle(
                                                fontSize: 25,
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.w900,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
//////////orjinallllllllllll 2222222222////

Widget buildKate(String title, String foto, String sayfa) {
  return Container(
    padding: EdgeInsets.all(1),
    margin: EdgeInsets.all(1),
    width: double.infinity,
    decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 4,
            offset: Offset(0, 4),
          )
        ]),
    child: Column(
      children: [
        Text(
          sayfa,
          style: TextStyle(fontSize: 15),
        ),
        SizedBox(
          height: 1,
        ),
        Container(
          height: 200,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.blue,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(foto) as ImageProvider,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          color: Colors.orange,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
