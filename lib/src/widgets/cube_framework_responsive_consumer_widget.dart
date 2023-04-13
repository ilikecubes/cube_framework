import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../extensions/extensions.dart';

abstract class CFResponsiveConsumerWidget<T>
    extends CubeFrameworkResponsiveConsumerWidget<T> {
  const CFResponsiveConsumerWidget({
    super.key,
  });
}

abstract class CubeFrameworkResponsiveConsumerWidget<T> extends HookWidget {
  const CubeFrameworkResponsiveConsumerWidget({super.key});

  @override
  Widget build(BuildContext context) => Consumer<T>(
        builder: (context, value, child) {
          return ScreenTypeLayout.builder(
            desktop: (context) => constructDesktop(
              context,
              context.theme(),
              context.textTheme(),
              context.navigator(),
              context.route(),
              context.width(),
              context.height(),
              value,
            ),
            tablet: (context) => constructTablet(
              context,
              context.theme(),
              context.textTheme(),
              context.navigator(),
              context.route(),
              context.width(),
              context.height(),
              value,
            ),
            mobile: (context) => constructMobile(
              context,
              context.theme(),
              context.textTheme(),
              context.navigator(),
              context.route(),
              context.width(),
              context.height(),
              value,
            ),
          );
        },
      );

  Widget constructDesktop(
    BuildContext context,
    ColorScheme colorScheme,
    TextTheme textTheme,
    NavigatorState navigator,
    ModalRoute<Object?>? route,
    double width,
    double height,
    T provider,
  );

  Widget constructTablet(
    BuildContext context,
    ColorScheme colorScheme,
    TextTheme textTheme,
    NavigatorState navigator,
    ModalRoute<Object?>? route,
    double width,
    double height,
    T provider,
  );

  Widget constructMobile(
    BuildContext context,
    ColorScheme colorScheme,
    TextTheme textTheme,
    NavigatorState navigator,
    ModalRoute<Object?>? route,
    double width,
    double height,
    T provider,
  );
}
