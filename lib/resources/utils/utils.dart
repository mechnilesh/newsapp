import 'package:flutter/material.dart';

class Utils {
  //----------------Show Snack Bar-------------//
  static showSnackBar(BuildContext context, String msg, Color color) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Duration(minutes: 30),
        content: Text(msg),
        backgroundColor: color,
      ),
    );
  }
}
