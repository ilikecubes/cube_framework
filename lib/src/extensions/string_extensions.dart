import 'dart:convert';

import 'package:flutter/material.dart';

extension StringExtension on String {
  String capitalize() =>
      "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  String alphanumeric() =>
      replaceAll(RegExp("[^A-Za-z0-9]"), " ").trimLeft().trimRight();
  MemoryImage base64ToImage() => MemoryImage(base64Decode(this));
  bool isInt() => int.tryParse(this) != null;
  bool isIntOrEmpty() => isInt() || isEmpty;
  bool isPositiveInt() => isInt() && int.parse(this) >= 0;
  bool isPositiveIntOrEmpty() => isPositiveInt() || isEmpty;
  bool isDouble() => double.tryParse(this) != null;
  bool isDoubleOrEmpty() => isDouble() || isEmpty;
  bool isPositiveDouble() => isDouble() && double.parse(this) >= 0;
  bool isPositiveDoubleOrEmpty() => isPositiveDouble() || isEmpty;
}
