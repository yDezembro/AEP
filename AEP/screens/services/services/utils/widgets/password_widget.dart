import 'package:flutter/material.dart';
import '../services/password_manager.dart';
import '../utils/password_generator.dart';

class PasswordWidget extends StatelessWidget {
  final PasswordManager passwordManager;
  final PasswordGenerator passwordGenerator = PasswordGenerator();

  PasswordWidget({required this.passwordManager});

  void _generateAndSavePassword(BuildContext context) async {
    final newPassword = passwordGenerator.generate();
    await passwordManager.savePassword("unique_key", newPassword);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Password saved securely!")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () => _generateAndSavePassword(context),
          child: Text("Generate and Save Password"),
        ),
        ElevatedButton(
          onPressed: () async {
            final savedPassword = await passwordManager.retrievePassword("unique_key");
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Retrieved Password: $savedPassword")),
            );
          },
          child: Text("Retrieve Password"),
        ),
      ],
    );
  }
}
