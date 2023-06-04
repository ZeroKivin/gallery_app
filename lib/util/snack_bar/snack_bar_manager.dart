import 'package:flutter/material.dart';

final class SnackBarManager {
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey = GlobalKey();

  void showSnackBar(String text) {
    scaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(
        content: Text(text),
      ),
    );
  }
}
