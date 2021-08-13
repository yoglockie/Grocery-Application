import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:major_project/FruitAll.dart';
import 'package:major_project/FruitView.dart';

//import 'package:major_project/LogOut.dart';

import 'package:major_project/MoreView.dart';
import 'package:major_project/SpicesAll.dart';
import 'package:major_project/SpicesView.dart';
import 'package:major_project/VegetableAll.dart';
import 'package:major_project/VegetableView.dart';
import 'package:major_project/login_page.dart';
import 'package:major_project/pofile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  final storage = new FlutterSecureStorage();
  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          leading: Builder(
            builder: (context) => Padding(
              padding: const EdgeInsets.only(top: 6.0, left: 3),
              child: IconButton(
                icon: Icon(
                  Icons.menu_rounded,
                  color: Colors.blue,
                  size: 30,
                ),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 13.0),
            child: Text(
              "GROCERIE",
              style: GoogleFonts.josefinSans(
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue[700]),
            ),
          ),
          elevation: 0,
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0, top: 7),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage()));
                },
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
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.blue,
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 60.0),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  blurRadius: 6.0,
                                  spreadRadius: 4.0,
                                  offset: Offset(0.0, 0.3))
                            ],
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://www.nicepng.com/png/full/144-1446162_pin-businessman-clipart-png-flat-user-icon.png"),
                                fit: BoxFit.contain),
                            shape: BoxShape.circle),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Welcome",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.blue),
              title: Text(
                'Home',
                style: TextStyle(fontSize: 18, color: Colors.blue),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text(
                'Profile',
                style: TextStyle(fontSize: 18, color: Colors.blue),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.circle, color: Colors.blue),
              title: Text(
                'Fruits',
                style: TextStyle(fontSize: 18, color: Colors.blue),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const FruitAll()));
              },
            ),
            ListTile(
              leading: Icon(Icons.circle_outlined, color: Colors.blue),
              title: Text(
                'Vegetables',
                style: TextStyle(fontSize: 18, color: Colors.blue),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VegetableAll()));
              },
            ),
            ListTile(
              leading: Icon(Icons.circle_sharp, color: Colors.blue),
              title: Text(
                'Spices',
                style: TextStyle(fontSize: 18, color: Colors.blue),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SpicesAll()));
              },
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.blue),
              title: Text(
                'Logout',
                style: TextStyle(fontSize: 18, color: Colors.blue),
              ),
              onTap: () async => {
                await FirebaseAuth.instance.signOut(),
                await storage.delete(key: "uid"),
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                    (route) => false)
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            // Padding(
            //   padding: const EdgeInsets.only(top: 10),
            //   child: Container(
            //     height: 50,
            //     width: MediaQuery.of(context).size.width,
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Padding(
            //           padding: const EdgeInsets.only(
            //             left: 10.0,
            //           ),
            //           child: InkWell(
            //             onTap: () {
            //               Navigator.push(
            //                   context,
            //                   MaterialPageRoute(
            //                       builder: (context) => LogOut()));
            //             },
            //             child: Icon(
            //               Icons.menu,
            //               size: 30,
            //               color: Colors.blue,
            //             ),
            //           ),
            //         ),
            //         Text(
            //           "GROCERIE",
            //           style: TextStyle(
            //               fontSize: 30,
            //               fontWeight: FontWeight.w900,
            //               color: Colors.blue[700]),
            //         ),
            //         Padding(
            //           padding: const EdgeInsets.only(right: 10.0),
            //           child: Container(
            //             height: 50,
            //             width: 50,
            //             decoration: BoxDecoration(
            //                 boxShadow: [
            //                   BoxShadow(
            //                       color: Colors.grey.withOpacity(0.3),
            //                       blurRadius: 6.0,
            //                       spreadRadius: 4.0,
            //                       offset: Offset(0.0, 0.3))
            //                 ],
            //                 color: Colors.blue[300],
            //                 shape: BoxShape.circle,
            //                 image: DecorationImage(
            //                     image: AssetImage("assets/man.png"),
            //                     fit: BoxFit.contain)),
            //           ),
            //         )
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 20,
            // ),
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
