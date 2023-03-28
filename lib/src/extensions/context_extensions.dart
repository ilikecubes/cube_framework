import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  double width() => MediaQuery.of(this).size.width;
  double height() => MediaQuery.of(this).size.height;
  ColorScheme theme() => Theme.of(this).colorScheme;
  TextTheme textTheme() => Theme.of(this).textTheme;
  NavigatorState navigator() => Navigator.of(this);
  ModalRoute<Object?>? route() => ModalRoute.of(this);
}
