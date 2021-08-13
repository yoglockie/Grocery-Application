import 'package:flutter/material.dart';
import 'package:major_project/FinalItemView.dart';
import 'package:major_project/FruitAll.dart';

class FruitView extends StatelessWidget {
  const FruitView({Key? key}) : super(key: key);

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
                        MaterialPageRoute(builder: (context) => Banana()));
                  },
                  child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width / 3.40,
                    decoration: BoxDecoration(
                        color: Color(0xFFFFE9C6),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/banana.png"),
                                  fit: BoxFit.contain),
                              shape: BoxShape.circle,
                              color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Text("Banana",
                              style: TextStyle(
                                  color: Color(0xFFDA9551),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Apple()));
                    },
                    child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width / 3.40,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFE9C6),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 75,
                            width: 75,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/apple.png"),
                                    fit: BoxFit.contain),
                                shape: BoxShape.circle,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text("Apple",
                                style: TextStyle(
                                    color: Color(0xFFDA9551),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Pomegranate()));
                    },
                    child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width / 3.40,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFE9C6),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 75,
                            width: 75,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/pomegranate.png"),
                                    fit: BoxFit.contain),
                                shape: BoxShape.circle,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text("P.Granate",
                                style: TextStyle(
                                    color: Color(0xFFDA9551),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ))
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
                          MaterialPageRoute(builder: (context) => Grapes()));
                    },
                    child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width / 3.40,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFE9C6),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 75,
                            width: 75,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/grapes.png"),
                                    fit: BoxFit.contain),
                                shape: BoxShape.circle,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text("Grapes",
                                style: TextStyle(
                                    color: Color(0xFFDA9551),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Mango()));
                    },
                    child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width / 3.40,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFE9C6),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 75,
                            width: 75,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/mango.png"),
                                    fit: BoxFit.contain),
                                shape: BoxShape.circle,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text("Mango",
                                style: TextStyle(
                                    color: Color(0xFFDA9551),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Papaya()));
                    },
                    child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width / 3.40,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFE9C6),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 75,
                            width: 75,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/papaya.png"),
                                    fit: BoxFit.contain),
                                shape: BoxShape.circle,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text("Papaya",
                                style: TextStyle(
                                    color: Color(0xFFDA9551),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FruitAll()));
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
