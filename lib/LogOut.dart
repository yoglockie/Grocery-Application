import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:major_project/login_page.dart';

class LogOut extends StatelessWidget {
  const LogOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 130.0),
          child: ElevatedButton(
              onPressed: () async => {
                    await FirebaseAuth.instance.signOut(),
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
