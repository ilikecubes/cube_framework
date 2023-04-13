import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../extensions/extensions.dart';

abstract class CFResponsiveWidget extends CubeFrameworkResponsiveWidget {
  const CFResponsiveWidget({
    super.key,
  });
}

abstract class CubeFrameworkResponsiveWidget extends HookWidget {
  const CubeFrameworkResponsiveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => constructDesktop(
        context,
        context.theme(),
        context.textTheme(),
        context.navigator(),
        context.route(),
        context.width(),
        context.height(),
      ),
      tablet: (context) => constructTablet(
        context,
        context.theme(),
        context.textTheme(),
        context.navigator(),
        context.route(),
        context.width(),
        context.height(),
      ),
      mobile: (context) => constructMobile(
        context,
        context.theme(),
        context.textTheme(),
        context.navigator(),
        context.route(),
        context.width(),
        context.height(),
      ),
    );
  }

  Widget constructDesktop(
    BuildContext context,
    ColorScheme colorScheme,
    TextTheme textTheme,
    NavigatorState navigator,
    ModalRoute<Object?>? route,
    double width,
    double height,
  );

  Widget constructTablet(
    BuildContext context,
    ColorScheme colorScheme,
    TextTheme textTheme,
    NavigatorState navigator,
    ModalRoute<Object?>? route,
    double width,
    double height,
  );

  Widget constructMobile(
    BuildContext context,
    ColorScheme colorScheme,
    TextTheme textTheme,
    NavigatorState navigator,
    ModalRoute<Object?>? route,
    double width,
    double height,
  );
}
