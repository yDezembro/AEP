import 'package:flutter/material.dart';
import '../services/auth_service.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthService _authService = AuthService();

  void _login() async {
    bool isAuthenticated = await _authService.authenticateWith2FA();
    if (isAuthenticated) {
      Navigator.pushNamed(context, '/home');
    } else {
      // Mostrar alerta de erro de autenticação
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Center(
        child: ElevatedButton(
          onPressed: _login,
          child: Text("Login with 2FA"),
        ),
      ),
    );
  }
}
