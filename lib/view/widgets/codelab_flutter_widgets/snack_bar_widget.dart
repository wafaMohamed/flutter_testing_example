import 'package:flutter/material.dart';

class SnackBarHelper {
  static void snackBarWidget(
      BuildContext context, String message, Duration duration) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: duration,
      ),
    );
  }
}
