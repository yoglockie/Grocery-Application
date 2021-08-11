import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:major_project/login_page.dart';

class LogOut extends StatefulWidget {
  const LogOut({Key? key}) : super(key: key);

  @override
  _LogOutState createState() => _LogOutState();
}

class _LogOutState extends State<LogOut> {
  final storage = new FlutterSecureStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 130.0),
          child: ElevatedButton(
              onPressed: () async => {
                    await FirebaseAuth.instance.signOut(),
                    await storage.delete(key: "uid"),
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                        (route) => false)
                  },
              child: Row(
                children: [
                  Icon(Icons.logout),
                  Text("Logout"),
                ],
              )),
        ),
      ),
    );
  }
}
