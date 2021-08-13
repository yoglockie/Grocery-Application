import 'package:flutter/material.dart';
import 'package:major_project/FinalItemView.dart';
import 'package:major_project/SpicesAll.dart';

class SpicesView extends StatelessWidget {
  const SpicesView({Key? key}) : super(key: key);

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
                          MaterialPageRoute(builder: (context) => Garlic()));
                    },
                    child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width / 3.40,
                      decoration: BoxDecoration(
                          color: Color(0xFFC2E3FE),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 75,
                            width: 75,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/garlic.png"),
                                    fit: BoxFit.contain),
                                shape: BoxShape.circle,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text("Garlic",
                                style: TextStyle(
                                    color: Color(0xFF6A8CAA),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Turmeric()));
                    },
                    child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width / 3.40,
                      decoration: BoxDecoration(
                          color: Color(0xFFC2E3FE),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 75,
                            width: 75,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/turmeric.png"),
                                    fit: BoxFit.contain),
                                shape: BoxShape.circle,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text("Termeric",
                                style: TextStyle(
                                    color: Color(0xFF6A8CAA),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Chilli()));
                    },
                    child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width / 3.40,
                      decoration: BoxDecoration(
                          color: Color(0xFFC2E3FE),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 75,
                            width: 75,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/chilli.png"),
                                    fit: BoxFit.contain),
                                shape: BoxShape.circle,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text("Chilli",
                                style: TextStyle(
                                    color: Color(0xFF6A8CAA),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CuminSeeds()));
                    },
                    child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width / 3.40,
                      decoration: BoxDecoration(
                          color: Color(0xFFC2E3FE),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 75,
                            width: 75,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/cuminseeds.png"),
                                    fit: BoxFit.contain),
                                shape: BoxShape.circle,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text("Cumin Seeds",
                                style: TextStyle(
                                    color: Color(0xFF6A8CAA),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Coriander()));
                    },
                    child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width / 3.40,
                      decoration: BoxDecoration(
                          color: Color(0xFFC2E3FE),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 75,
                            width: 75,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/coriander.png"),
                                    fit: BoxFit.contain),
                                shape: BoxShape.circle,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text("Coriander",
                                style: TextStyle(
                                    color: Color(0xFF6A8CAA),
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
                              builder: (context) => BlackPepper()));
                    },
                    child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width / 3.40,
                      decoration: BoxDecoration(
                          color: Color(0xFFC2E3FE),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 75,
                            width: 75,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/blackpepper.png"),
                                    fit: BoxFit.contain),
                                shape: BoxShape.circle,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text("Black Pepper",
                                style: TextStyle(
                                    color: Color(0xFF6A8CAA),
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
                        MaterialPageRoute(builder: (context) => SpicesAll()));
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
