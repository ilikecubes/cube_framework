import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeNotifierBuilder<T extends ChangeNotifier> extends StatelessWidget {
  const ChangeNotifierBuilder({
    super.key,
    required this.notifier,
    required this.builder,
    this.child,
  });

  final T notifier;
  final Widget? child;
  final Widget Function(BuildContext context, T notifier, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => notifier,
      child: Consumer<T>(
        builder: builder,
        child: child,
      ),
    );
  }
}
