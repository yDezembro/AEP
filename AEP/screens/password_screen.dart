import 'package:flutter/material.dart';
import '../services/password_manager.dart';
import '../widgets/password_widget.dart';

class PasswordScreen extends StatelessWidget {
  final PasswordManager _passwordManager = PasswordManager();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Password Manager")),
      body: Center(
        child: PasswordWidget(passwordManager: _passwordManager),
      ),
    );
  }
}
