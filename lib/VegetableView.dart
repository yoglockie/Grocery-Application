import 'package:flutter/material.dart';
import 'package:major_project/FinalItemView.dart';
import 'package:major_project/VegetableAll.dart';

class VegetableView extends StatelessWidget {
  const VegetableView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Tomato()));
                    },
                    child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width / 3.40,
                      decoration: BoxDecoration(
                          color: Color(0xFFD7FADA),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 75,
                            width: 75,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/tomato.png"),
                                    fit: BoxFit.contain),
                                shape: BoxShape.circle,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text("Tomato",
                                style: TextStyle(
                                    color: Color(0xFF56CC7E),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Cauliflower()));
                    },
                    child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width / 3.40,
                      decoration: BoxDecoration(
                          color: Color(0xFFD7FADA),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 75,
                            width: 75,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/cauliflower.png"),
                                    fit: BoxFit.contain),
                                shape: BoxShape.circle,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text("Cauliflower",
                                style: TextStyle(
                                    color: Color(0xFF56CC7E),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Potato()));
                    },
                    child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width / 3.40,
                      decoration: BoxDecoration(
                          color: Color(0xFFD7FADA),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 75,
                            width: 75,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/potato.png"),
                                    fit: BoxFit.contain),
                                shape: BoxShape.circle,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text("Potato",
                                style: TextStyle(
                                    color: Color(0xFF56CC7E),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ), //1
          SizedBox(height: 10),
          Container(
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Onion()));
                    },
                    child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width / 3.40,
                      decoration: BoxDecoration(
                          color: Color(0xFFD7FADA),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 75,
                            width: 75,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/onion.png"),
                                    fit: BoxFit.contain),
                                shape: BoxShape.circle,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text("Onion",
                                style: TextStyle(
                                    color: Color(0xFF56CC7E),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Broccoli()));
                    },
                    child: Container(
                      height: 150,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Color(0xFFD7FADA),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 75,
                            width: 75,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/broccoli.png"),
                                    fit: BoxFit.contain),
                                shape: BoxShape.circle,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text("Broccoli",
                                style: TextStyle(
                                    color: Color(0xFF56CC7E),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Pea()));
                    },
                    child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width / 3.40,
                      decoration: BoxDecoration(
                          color: Color(0xFFD7FADA),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 75,
                            width: 75,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/pea.png"),
                                    fit: BoxFit.contain),
                                shape: BoxShape.circle,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text("Pea",
                                style: TextStyle(
                                    color: Color(0xFF56CC7E),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),

          Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 250.0, top: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VegetableAll()));
                  },
                  child: Text(
                    "See All",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
