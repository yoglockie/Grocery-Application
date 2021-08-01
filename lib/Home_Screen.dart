import 'package:flutter/material.dart';
import 'package:major_project/FruitView.dart';
import 'package:major_project/MoreView.dart';
import 'package:major_project/SpicesView.dart';
import 'package:major_project/VegetableView.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10.0,
                      ),
                      child: Icon(
                        Icons.menu,
                        size: 30,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      "GROCERIE",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          color: Colors.blue[700]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  blurRadius: 6.0,
                                  spreadRadius: 4.0,
                                  offset: Offset(0.0, 0.3))
                            ],
                            color: Colors.blue[300],
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("assets/man.png"),
                                fit: BoxFit.contain)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 170,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/grocery_image.png"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20)),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                "Grocery Items",
                style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: TabBar(
                  controller: tabController,
                  isScrollable: true,
                  indicatorColor: Colors.transparent,
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.grey.withOpacity(1.0),
                  labelStyle:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
                  unselectedLabelStyle:
                      TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                  tabs: [
                    Tab(child: Text('Fruits')),
                    Tab(child: Text('Vegetables')),
                    Tab(child: Text('Spices')),
                    Tab(child: Text('More')),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: Container(
                height: 350,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    FruitView(),
                    VegetableView(),
                    SpicesView(),
                    MoreView(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
