import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../extensions/extensions.dart';

abstract class CFWidget extends CubeFrameworkWidget {
  const CFWidget({super.key});
}

abstract class CubeFrameworkWidget extends HookWidget {
  const CubeFrameworkWidget({super.key});

  @override
  Widget build(BuildContext context) => construct(
        context,
        context.theme(),
        context.textTheme(),
        context.navigator(),
        context.route(),
        context.width(),
        context.height(),
      );

  Widget construct(
    BuildContext context,
    ColorScheme colorScheme,
    TextTheme textTheme,
    NavigatorState navigator,
    ModalRoute<Object?>? route,
    double width,
    double height,
  );
}
