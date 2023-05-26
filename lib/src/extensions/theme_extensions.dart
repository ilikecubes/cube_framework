import 'package:flutter/material.dart';

extension ThemeExtension on ColorScheme {
  ButtonStyle primaryButton() => ElevatedButton.styleFrom(
        foregroundColor: onPrimary,
        backgroundColor: primary,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
      );
  ButtonStyle backgroundButton() => ElevatedButton.styleFrom(
        foregroundColor: onBackground,
        backgroundColor: background,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
      );
}
