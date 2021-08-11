import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.blue[400],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 1.6,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 5.7,
            left: MediaQuery.of(context).size.width / 4.0,
            child: Container(
              height: MediaQuery.of(context).size.height / 3.6,
              width: MediaQuery.of(context).size.width / 2.1,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.yellow[50],
                  image: DecorationImage(
                      image: AssetImage("assets/useravtar.png"),
                      fit: BoxFit.cover)),
            ),
          ),
          // Positioned(
          //   top: MediaQuery.of(context).size.height / 2.15,
          //   left: MediaQuery.of(context).size.width / 2.9,
          //   child: Text(
          //     "User29",
          //     style: GoogleFonts.rubik(
          //         fontSize: 30,
          //         color: Colors.blue,
          //         fontWeight: FontWeight.bold),
          //   ),
          // ),
          // Positioned(
          //   top: MediaQuery.of(context).size.height / 1.9,
          //   left: MediaQuery.of(context).size.width / 3.2,
          //   child: Text("lokesh@gmail.com",
          //       style: GoogleFonts.rubik(
          //         fontSize: 20,
          //         color: Colors.blue,
          //       )),
          // ),
          // Positioned(
          //   top: MediaQuery.of(context).size.height / 1.6,
          //   left: MediaQuery.of(context).size.width / 3.2,
          //   child: Container(
          //     child: Center(
          //       child: Text("Anwarpura, Bagri, Peeplu, Tonk 304801 ",
          //           style: GoogleFonts.rubik(
          //             fontSize: 20,
          //             color: Colors.blue,
          //           )),
          //     ),
          //   ),
          // ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2.18,
            child: Container(
              height: MediaQuery.of(context).size.height / 2.0,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "User29",
                      style: GoogleFonts.rubik(
                          fontSize: 30,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("lokesh@gmail.com",
                        style: GoogleFonts.rubik(
                          fontSize: 20,
                          color: Colors.blue,
                        )),
                    SizedBox(
                      height: 30,
                    ),
                    Text("Mo. - 82394790183",
                        style: GoogleFonts.rubik(
                          fontSize: 20,
                          color: Colors.blue,
                        )),
                    SizedBox(
                      height: 30,
                    ),
                    Text("Anwarpura,Tonk",
                        style: GoogleFonts.rubik(
                          fontSize: 20,
                          color: Colors.blue,
                        )),
                    Text("304801",
                        style: GoogleFonts.rubik(
                          fontSize: 20,
                          color: Colors.blue,
                        )),
                    SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                        height: 50,
                        width: 200,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: BorderSide(color: Colors.red)))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => EditProfile()));
                            },
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Icon(Icons.edit),
                                ),
                                Text(
                                  "Edit Profile",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ))),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 5,
            top: 5,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.cancel,
                color: Colors.transparent.withOpacity(0.3),
              ),
            ),
          )
        ],
      )),
    );
  }
}

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Edit Details",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Phone Number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextFormField(
                //keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "City",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextFormField(
                //keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Colony",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Pincode",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            SizedBox(
                height: 50,
                width: 250,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(22.0),
                                    side: BorderSide(color: Colors.red)))),
                    onPressed: () {},
                    child: Text(
                      "Save",
                      style: TextStyle(fontSize: 25),
                    )))
          ],
        ),
      ),
    );
  }
}
