import 'package:flutter/material.dart';
import 'password_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PasswordScreen()),
            );
          },
          child: Text("Manage Passwords"),
        ),
      ),
    );
  }
}
