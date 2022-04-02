import 'dart:math';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:vizedeneme1/main.dart';
import 'package:vizedeneme1/second.dart';

void main() {
  runApp(MaterialApp(home: Giyecek()));
}

//yukarda home sağında const var
class Giyecek extends StatelessWidget {
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
                      "   Giyim",
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
                                          "ZARA: KAPİTONE İNCE CEKET",
                                          style: TextStyle(
                                              fontSize: 20,
                                              backgroundColor: Colors.white),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: 500,
                                          width: 350,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(40),
                                            color: Colors.white,
                                            image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage(
                                                  "assets/images/zara6.jpg")
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
                                              " İndirim Bedeli: 700Tl=>456Tl",
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
                                          "ZARA: ŞİŞME KAHVERENGİ MONT",
                                          style: TextStyle(
                                              fontSize: 20,
                                              backgroundColor: Colors.white),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: 500,
                                          width: 350,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(40),
                                            color: Colors.white,
                                            image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage(
                                                  "assets/images/zara2.jpg")
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
                                              " İndirim Bedeli: 600Tl=>353Tl",
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
                                          "GUCCİ: Wales wool",
                                          style: TextStyle(
                                              fontSize: 20,
                                              backgroundColor: Colors.white),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: 550,
                                          width: 350,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(40),
                                            color: Colors.white,
                                            image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage(
                                                  "assets/images/gucci1.jpg")
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
                                              " İndirim Bedeli: 17K Tl=>15.6K Tl",
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
                                          "Adidas: ALWAYS ORİGİNAL GRAPHİC",
                                          style: TextStyle(
                                              fontSize: 20,
                                              backgroundColor: Colors.white),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: 580,
                                          width: 350,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(40),
                                            color: Colors.white,
                                            image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage(
                                                  "assets/images/keko1.jpg")
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
                                              " İndirim Bedeli: 3000Tl=>1150Tl",
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
                                          "Adidas: ADİDAS SPRT",
                                          style: TextStyle(
                                              fontSize: 20,
                                              backgroundColor: Colors.white),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: 500,
                                          width: 350,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(40),
                                            color: Colors.white,
                                            image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage(
                                                  "assets/images/keko2.jpg")
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
                                              " İndirim Bedeli: 1300Tl=>1060Tl",
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
                                          "LcWaikiki: LCW BASIC Bisiklet Yaka",
                                          style: TextStyle(
                                              fontSize: 20,
                                              backgroundColor: Colors.white),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: 600,
                                          width: 350,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(40),
                                            color: Colors.white,
                                            image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage(
                                                  "assets/images/lc1.jpg")
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
                                              " İndirim Bedeli: 720Tl=>450Tl",
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
                                          "LcWaikiki :LCW CLASSIC Regular Fit",
                                          style: TextStyle(
                                              fontSize: 20,
                                              backgroundColor: Colors.white),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: 600,
                                          width: 350,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(40),
                                            color: Colors.white,
                                            image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage(
                                                  "assets/images/lc2.jpg")
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
                                              " İndirim Bedeli: 900Tl=>8560Tl",
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
                                          "LcWaikiki: Atatürklü Erkek Çocuk Kep",
                                          style: TextStyle(
                                              fontSize: 20,
                                              backgroundColor: Colors.white),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: 300,
                                          width: 350,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(40),
                                            color: Colors.white,
                                            image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage(
                                                  "assets/images/lc3.jpg")
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
                                              " İndirim Bedeli: 75Tl=>55Tl",
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
