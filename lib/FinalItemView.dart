//line 9-541 = item classes
// line 542 -751 = final Item view
// line 752 -last = payment page view

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:major_project/variables.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

//fruits line 5-156
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

//vegetables 158-308

class Tomato extends StatefulWidget {
  const Tomato({Key? key}) : super(key: key);

  @override
  _TomatoState createState() => _TomatoState();
}

class _TomatoState extends State<Tomato> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(context, tomatoimgFinal, tomato, tomatoPrice,
        tomatoCutPrice, tomatodesc);
  }
}

class Onion extends StatefulWidget {
  const Onion({Key? key}) : super(key: key);

  @override
  _OnionState createState() => _OnionState();
}

class _OnionState extends State<Onion> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(
        context, onionimgFinal, onion, onionPrice, onionCutPrice, oniondesc);
  }
}

class Broccoli extends StatefulWidget {
  const Broccoli({Key? key}) : super(key: key);

  @override
  _BroccoliState createState() => _BroccoliState();
}

class _BroccoliState extends State<Broccoli> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(context, broccoliimgFinal, broccoli,
        broccoliPrice, broccoliCutPrice, broccolidesc);
  }
}

class Cauliflower extends StatefulWidget {
  const Cauliflower({Key? key}) : super(key: key);

  @override
  _CauliflowerState createState() => _CauliflowerState();
}

class _CauliflowerState extends State<Cauliflower> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(context, cauliflowerimgFinal, cauliflower,
        cauliflowerPrice, cauliflowerCutPrice, cauliflowerdesc);
  }
}

class Potato extends StatefulWidget {
  const Potato({Key? key}) : super(key: key);

  @override
  _PotatoState createState() => _PotatoState();
}

class _PotatoState extends State<Potato> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(context, potatoimgFinal, potato, potatoPrice,
        potatoCutPrice, potatodesc);
  }
}

class Pea extends StatefulWidget {
  const Pea({Key? key}) : super(key: key);

  @override
  _PeaState createState() => _PeaState();
}

class _PeaState extends State<Pea> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(
        context, peaimgFinal, pea, peaPrice, peaCutPrice, peadesc);
  }
}

class Egglant extends StatefulWidget {
  const Egglant({Key? key}) : super(key: key);

  @override
  _EgglantState createState() => _EgglantState();
}

class _EgglantState extends State<Egglant> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(context, egglantimgFinal, egglant, egglantPrice,
        egglantCutPrice, egglantdesc);
  }
}

class BellPepper extends StatefulWidget {
  const BellPepper({Key? key}) : super(key: key);

  @override
  _BellPepperState createState() => _BellPepperState();
}

class _BellPepperState extends State<BellPepper> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(context, bellpepperimgFinal, bellpepper,
        bellpepperPrice, bellpepperCutPrice, bellpepperdesc);
  }
}

class Carrot extends StatefulWidget {
  const Carrot({Key? key}) : super(key: key);

  @override
  _CarrotState createState() => _CarrotState();
}

class _CarrotState extends State<Carrot> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(context, carrotimgFinal, carrot, carrotPrice,
        carrotCutPrice, carrotdesc);
  }
}

class Cucumber extends StatefulWidget {
  const Cucumber({Key? key}) : super(key: key);

  @override
  _CucumberState createState() => _CucumberState();
}

class _CucumberState extends State<Cucumber> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(context, cucumberimgFinal, cucumber,
        cucumberPrice, cucumberCutPrice, cucumberdesc);
  }
}

//spices line no. 311-460

class Garlic extends StatefulWidget {
  const Garlic({Key? key}) : super(key: key);

  @override
  _GarlicState createState() => _GarlicState();
}

class _GarlicState extends State<Garlic> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(context, garlicimgFinal, garlic, garlicPrice,
        garlicCutPrice, garlicdesc);
  }
}

class Turmeric extends StatefulWidget {
  const Turmeric({Key? key}) : super(key: key);

  @override
  _TurmericState createState() => _TurmericState();
}

class _TurmericState extends State<Turmeric> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(context, turmericimgFinal, turmeric,
        turmericPrice, turmericCutPrice, turmericdesc);
  }
}

class Chilli extends StatefulWidget {
  const Chilli({Key? key}) : super(key: key);

  @override
  _ChilliState createState() => _ChilliState();
}

class _ChilliState extends State<Chilli> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(context, chilliimgFinal, chilli, chilliPrice,
        chilliCutPrice, chillidesc);
  }
}

class CuminSeeds extends StatefulWidget {
  const CuminSeeds({Key? key}) : super(key: key);

  @override
  _CuminSeedsState createState() => _CuminSeedsState();
}

class _CuminSeedsState extends State<CuminSeeds> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(
        context, cuminimgFinal, cumin, cuminPrice, cuminCutPrice, cumindesc);
  }
}

class Coriander extends StatefulWidget {
  const Coriander({Key? key}) : super(key: key);

  @override
  _CorianderState createState() => _CorianderState();
}

class _CorianderState extends State<Coriander> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(context, corianderimgFinal, coriander,
        corianderPrice, corianderCutPrice, corianderdesc);
  }
}

class BlackPepper extends StatefulWidget {
  const BlackPepper({Key? key}) : super(key: key);

  @override
  _BlackPepperState createState() => _BlackPepperState();
}

class _BlackPepperState extends State<BlackPepper> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(context, blackpepperimgFinal, blackpepper,
        blackpepperPrice, blackpepperCutPrice, blackpepperdesc);
  }
}

class Cinnamon extends StatefulWidget {
  const Cinnamon({Key? key}) : super(key: key);

  @override
  _CinnamonState createState() => _CinnamonState();
}

class _CinnamonState extends State<Cinnamon> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(context, cinnamonimgFinal, cinnamon,
        cinnamonPrice, cinnamonCutPrice, cinnamondesc);
  }
}

class Cardamom extends StatefulWidget {
  const Cardamom({Key? key}) : super(key: key);

  @override
  _CardamomState createState() => _CardamomState();
}

class _CardamomState extends State<Cardamom> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(context, cardamomimgFinal, cardamom,
        cardamomPrice, cardamomCutPrice, cardamomdesc);
  }
}

class Saffron extends StatefulWidget {
  const Saffron({Key? key}) : super(key: key);

  @override
  _SaffronState createState() => _SaffronState();
}

class _SaffronState extends State<Saffron> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(context, saffronimgFinal, saffron, saffronPrice,
        saffronCutPrice, saffrondesc);
  }
}

class Clove extends StatefulWidget {
  const Clove({Key? key}) : super(key: key);

  @override
  _CloveState createState() => _CloveState();
}

class _CloveState extends State<Clove> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(
        context, cloveimgFinal, clove, clovePrice, cloveCutPrice, clovedesc);
  }
}

//other items 463-

class Oils extends StatefulWidget {
  const Oils({Key? key}) : super(key: key);

  @override
  _OilsState createState() => _OilsState();
}

class _OilsState extends State<Oils> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(
        context, oilsimgFinal, oils, oilsPrice, oilsCutPrice, oilsdesc);
  }
}

class Snacks extends StatefulWidget {
  const Snacks({Key? key}) : super(key: key);

  @override
  _SnacksState createState() => _SnacksState();
}

class _SnacksState extends State<Snacks> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(context, snacksimgFinal, snacks, snacksPrice,
        snacksCutPrice, snacksdesc);
  }
}

class Flour extends StatefulWidget {
  const Flour({Key? key}) : super(key: key);

  @override
  _FlourState createState() => _FlourState();
}

class _FlourState extends State<Flour> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(
        context, flourimgFinal, flour, flourPrice, flourCutPrice, flourdesc);
  }
}

class Dairy extends StatefulWidget {
  const Dairy({Key? key}) : super(key: key);

  @override
  _DairyState createState() => _DairyState();
}

class _DairyState extends State<Dairy> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(
        context, dairyimgFinal, dairy, dairyPrice, dairyCutPrice, dairydesc);
  }
}

class Souce extends StatefulWidget {
  const Souce({Key? key}) : super(key: key);

  @override
  _SouceState createState() => _SouceState();
}

class _SouceState extends State<Souce> {
  @override
  Widget build(BuildContext context) {
    return _buildFinalItemView(context, soucesimgFinal, souces, soucesPrice,
        soucesCutPrice, soucesdesc);
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
                            fontSize: 35,
                            fontWeight: FontWeight.w500,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Icon(
                          Icons.shop_2,
                          size: 30,
                          color: Colors.green,
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
                                  fontSize: 12),
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
                          child: Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ItemFinalandPayment(kItemName,
                                                kItemPrice, itemFinalImgPath)));
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(left: 100.0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.2,
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
                              ),
                            ),
                          ))
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

class ItemFinalandPayment extends StatefulWidget {
  const ItemFinalandPayment(this.lItemName, this.lItemPrice, this.img);

  final String lItemName;
  final String lItemPrice;
  final String img;

  @override
  _ItemFinalandPaymentState createState() => _ItemFinalandPaymentState();
}

class _ItemFinalandPaymentState extends State<ItemFinalandPayment> {
  final storage = new FlutterSecureStorage();

  late Razorpay _razorpay;

  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    // _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    // _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    // _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  void openCheckout() async {
    var options = {
      'key': 'rzp_test_xXcz1iL0ZaiWj9',
      'amount': widget.lItemPrice + '00',
      'name': widget.lItemName,
      'description': '1Kg will be delivered to your address',
      'prefill': {
        'contact': '',
        'email': '',
      },
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      //debugPrint(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.blue[900],
          ),
        ),
        elevation: 0,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 220),
            child: Text("Checkout",
                style: GoogleFonts.nunitoSans(
                    fontSize: 22,
                    color: Colors.blue[900],
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Divider(
              color: Colors.blue,
            ),
          ),
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Container(
                    height: 220,
                    width: MediaQuery.of(context).size.width / 2.25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          image: AssetImage(widget.img),
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Container(
                    height: 220,
                    width: MediaQuery.of(context).size.width / 2.25,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Text(
                            widget.lItemName,
                            style: GoogleFonts.heebo(
                                fontSize: 30,
                                color: Colors.blue[800],
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              "\u{20B9}${widget.lItemPrice}",
                              style: GoogleFonts.heebo(
                                  fontSize: 27,
                                  color: Colors.blue[800],
                                  fontWeight: FontWeight.bold),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              "For 1Kg",
                              style: GoogleFonts.heebo(
                                  fontSize: 17,
                                  color: Colors.blue[800],
                                  fontWeight: FontWeight.bold),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Icon(
                            Icons.shop,
                            color: Colors.blue[800],
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Divider(
              color: Colors.blue,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Container(
              height: 130,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Subtotal",
                        style: GoogleFonts.heebo(
                            color: Colors.blue[500], fontSize: 20),
                      ),
                      Text(
                        "\u{20B9}${widget.lItemPrice}",
                        style: GoogleFonts.heebo(
                            color: Colors.blue[500], fontSize: 20),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tax",
                        style: GoogleFonts.heebo(
                            color: Colors.blue[500], fontSize: 20),
                      ),
                      Text(
                        "\u{20B9}${0}",
                        style: GoogleFonts.heebo(
                            color: Colors.blue[500], fontSize: 20),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: GoogleFonts.heebo(
                            color: Colors.blue[500],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "\u{20B9}${widget.lItemPrice}",
                        style: GoogleFonts.heebo(
                            color: Colors.blue[500],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 50,
            width: 200,
            child: ElevatedButton(
              onPressed: () {
                openCheckout();
              },
              child: Text(
                "Proceed to Checkout",
                style: GoogleFonts.heebo(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue[900],
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
