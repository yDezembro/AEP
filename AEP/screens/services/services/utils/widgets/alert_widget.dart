import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  final String alertMessage;

  AlertWidget({required this.alertMessage});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Security Alert"),
      content: Text(alertMessage),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text("Dismiss"),
        ),
      ],
    );
  }
}
