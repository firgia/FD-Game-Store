import 'dart:ui';

import 'package:flutter/material.dart';

extension ElevatedButtonExtension on ElevatedButton {
  ElevatedButton large() {
    ButtonStyle _tempStyle =
        (style != null) ? style! : ElevatedButton.styleFrom();

    return ElevatedButton(
      onPressed: onPressed,
      child: child,
      style: _tempStyle.copyWith(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        minimumSize: MaterialStateProperty.all(
          Size(double.infinity, 50),
        ),
        textStyle: MaterialStateProperty.all(
          TextStyle(
            fontSize: 15,
            letterSpacing: 1.25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  ElevatedButton small() {
    ButtonStyle _tempStyle =
        (style != null) ? style! : ElevatedButton.styleFrom();

    return ElevatedButton(
      onPressed: onPressed,
      child: child,
      style: _tempStyle.copyWith(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        minimumSize: MaterialStateProperty.all(
          Size(20, 30),
        ),
        textStyle: MaterialStateProperty.all(
          TextStyle(
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
