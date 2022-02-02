import 'package:flutter/material.dart';

class Constant {
  static buttonTab(String text, VoidCallback onPressed, bool isActive) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              isActive ? Colors.grey[200] : Colors.transparent)),
    );
  }
}
