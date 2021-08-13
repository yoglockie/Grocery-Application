import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:major_project/Home_Screen.dart';
import 'package:major_project/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:major_project/user_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserPreferences.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'User Profile';
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  final storage = new FlutterSecureStorage();

  Future<bool> checkLoginStatus() async {
    String? value = await storage.read(key: "uid");
    if (value == null) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print("Something Went Wrong");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
                child: CircularProgressIndicator(
              color: Colors.white,
            ));
          }

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Grocery',
            theme: ThemeData(
                textTheme: GoogleFonts.josefinSansTextTheme(
                    Theme.of(context).textTheme),
                // primarySwatch: Colors.blue,
                primaryColor: Colors.white),
            home: FutureBuilder(
                future: checkLoginStatus(),
                builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
                  if (snapshot.data == false) {
                    return LoginPage();
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Container(
                        color: Colors.white,
                        child: Center(child: CircularProgressIndicator()));
                  }
                  return HomePage();
                }),
          );
        });
  }
}
