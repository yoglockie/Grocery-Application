import 'package:flutter/material.dart';
import 'package:major_project/FinalItemView.dart';
import 'package:major_project/MoreAll.dart';

class MoreView extends StatelessWidget {
  const MoreView({Key? key}) : super(key: key);

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
                          MaterialPageRoute(builder: (context) => Oils()));
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
                                    image: AssetImage("assets/oils.png"),
                                    fit: BoxFit.contain),
                                shape: BoxShape.circle,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text("Oils",
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
                          MaterialPageRoute(builder: (context) => Snacks()));
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
                                    image: AssetImage("assets/snacks.png"),
                                    fit: BoxFit.contain),
                                shape: BoxShape.circle,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text("Snacks",
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
                          MaterialPageRoute(builder: (context) => Flour()));
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
                                    image: AssetImage("assets/flour.png"),
                                    fit: BoxFit.contain),
                                shape: BoxShape.circle,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text("Flour",
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
                          MaterialPageRoute(builder: (context) => Dairy()));
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
                                    image: AssetImage("assets/dairy.png"),
                                    fit: BoxFit.contain),
                                shape: BoxShape.circle,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text("Dairy",
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
                          MaterialPageRoute(builder: (context) => Souce()));
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
                                    image: AssetImage("assets/souces.png"),
                                    fit: BoxFit.contain),
                                shape: BoxShape.circle,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text("Souces",
                                style: TextStyle(
                                    color: Color(0xFFDA9551),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    )),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MoreAll()));
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
                                  image: AssetImage("assets/otheritems.png"),
                                  fit: BoxFit.contain),
                              shape: BoxShape.circle,
                              color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Text("Other Items",
                              style: TextStyle(
                                  color: Color(0xFFDA9551),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                  ),
                ),
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
                        MaterialPageRoute(builder: (context) => MoreAll()));
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
