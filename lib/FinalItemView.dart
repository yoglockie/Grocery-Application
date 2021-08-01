import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:major_project/variables.dart';

//fruits
class Banana extends StatefulWidget {
  const Banana({Key? key}) : super(key: key);

  @override
  _BananaState createState() => _BananaState();
}

class _BananaState extends State<Banana> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(context, bananaimgFinal, banana, bananaPrice,
        bananaCutPrice, bananadesc);
  }
}

class Apple extends StatefulWidget {
  const Apple({Key? key}) : super(key: key);

  @override
  _AppleState createState() => _AppleState();
}

class _AppleState extends State<Apple> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(
        context, appleimgFinal, apple, applePrice, appleCutPrice, appledesc);
  }
}

class Mango extends StatefulWidget {
  const Mango({Key? key}) : super(key: key);

  @override
  _MangoState createState() => _MangoState();
}

class _MangoState extends State<Mango> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(
        context, mangoimgFinal, mango, mangoPrice, mangoCutPrice, mangodesc);
  }
}

class Pomegranate extends StatefulWidget {
  const Pomegranate({Key? key}) : super(key: key);

  @override
  _PomegranateState createState() => _PomegranateState();
}

class _PomegranateState extends State<Pomegranate> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(context, pomegranateimgFinal, pomegranate,
        pomegranatePrice, pomegranateCutPrice, pomegranatedesc);
  }
}

class Grapes extends StatefulWidget {
  const Grapes({Key? key}) : super(key: key);

  @override
  _GrapesState createState() => _GrapesState();
}

class _GrapesState extends State<Grapes> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(context, grapesimgFinal, grapes, grapesPrice,
        grapesCutPrice, grapesdesc);
  }
}

class Orange extends StatefulWidget {
  const Orange({Key? key}) : super(key: key);

  @override
  _OrangeState createState() => _OrangeState();
}

class _OrangeState extends State<Orange> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(context, orangeimgFinal, orange, orangePrice,
        orangeCutPrice, orangedesc);
  }
}

class Papaya extends StatefulWidget {
  const Papaya({Key? key}) : super(key: key);

  @override
  _PapayaState createState() => _PapayaState();
}

class _PapayaState extends State<Papaya> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(context, papayaimgFinal, papaya, papayaPrice,
        papayaCutPrice, papayadesc);
  }
}

class Cherry extends StatefulWidget {
  const Cherry({Key? key}) : super(key: key);

  @override
  _CherryState createState() => _CherryState();
}

class _CherryState extends State<Cherry> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(context, cherryimgFinal, cherry, cherryPrice,
        cherryCutPrice, cherrydesc);
  }
}

class Pineapple extends StatefulWidget {
  const Pineapple({Key? key}) : super(key: key);

  @override
  _PineappleState createState() => _PineappleState();
}

class _PineappleState extends State<Pineapple> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(context, pineappleimgFinal, pineapple,
        pineapplePrice, pineappleCutPrice, pineappledesc);
  }
}

class Kiwi extends StatefulWidget {
  const Kiwi({Key? key}) : super(key: key);

  @override
  _KiwiState createState() => _KiwiState();
}

class _KiwiState extends State<Kiwi> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(
        context, kiwiimgFinal, kiwi, kiwiPrice, kiwiCutPrice, kiwidesc);
  }
}

_buildFinalItemView(BuildContext context, String itemFinalImgPath,
    String kItemName, String kItemPrice, String kCutPrice, String descripText) {
  return SafeArea(
    child: Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 1.8,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(itemFinalImgPath), fit: BoxFit.cover)),
        ),
        Positioned(
          bottom: 0.0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 320,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 6.0,
                      spreadRadius: 4.0,
                      offset: Offset(0.0, 0.3))
                ],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 85,
                  width: 380,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(kItemName,
                          style: GoogleFonts.firaSans(
                            decoration: TextDecoration.none,
                            color: Colors.black54,
                            fontSize: 50,
                            fontWeight: FontWeight.w500,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Icon(
                          Icons.favorite_border,
                          size: 30,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 85,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: RichText(
                          text: TextSpan(
                              text: "\u{20B9}$kItemPrice",
                              style: GoogleFonts.firaSans(
                                  decoration: TextDecoration.none,
                                  fontSize: 40,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(
                                    text: "/Kg",
                                    style: GoogleFonts.firaSans(
                                        decoration: TextDecoration.none,
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))
                              ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: RichText(
                          text: TextSpan(
                              text: "\u{20B9}$kCutPrice",
                              style: GoogleFonts.firaSans(
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(
                                    text: "/Kg",
                                    style: GoogleFonts.firaSans(
                                        fontSize: 10,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))
                              ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.lightGreen,
                              borderRadius: BorderRadius.circular(7)),
                          child: Center(
                            child: Text(
                              "FREE SHIP",
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: Colors.white,
                                  fontSize: 17),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    height: 88,
                    width: MediaQuery.of(context).size.width,
                    child: Text(descripText,
                        style: GoogleFonts.firaSans(
                          decoration: TextDecoration.none,
                          fontSize: 15,
                          color: Colors.black38,
                          //
                        )),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2.2,
                          height: 52,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.lightGreen,
                          ),
                          child: Center(
                            child: Text("Add to Cart",
                                style: GoogleFonts.firaSans(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  //
                                )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2.2,
                          height: 52,
                          decoration: BoxDecoration(
                              color: Colors.lightGreen,
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: Text("Buy the Item",
                                style: GoogleFonts.firaSans(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  //
                                )),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            top: 5,
            right: 8.0,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.cancel,
                color: Colors.transparent.withOpacity(0.2),
              ),
            )),
      ],
    ),
  );
}
