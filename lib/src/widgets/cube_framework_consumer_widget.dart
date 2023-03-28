import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

import '../extensions/extensions.dart';

abstract class CFConsumerWidget<T> extends CubeFrameworkConsumerWidget<T> {
  const CFConsumerWidget({super.key});
}

abstract class CubeFrameworkConsumerWidget<T> extends HookWidget {
  const CubeFrameworkConsumerWidget({super.key});

  @override
  Widget build(BuildContext context) => Consumer<T>(
        builder: (context, value, child) {
          return construct(
            context,
            context.theme(),
            context.textTheme(),
            context.navigator(),
            context.route(),
            context.width(),
            context.height(),
            value,
          );
        },
      );

  Widget construct(
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
