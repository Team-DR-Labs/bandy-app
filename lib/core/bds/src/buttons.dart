import 'package:flutter/material.dart';

final class PlainButton extends StatelessWidget {
  const PlainButton({
    super.key,
    this.padding = const EdgeInsets.all(16.0),
    required this.child,
  });

  final EdgeInsetsGeometry padding;

  final Widget child;

  @override
  Widget build(BuildContext context) => Container(
        alignment: Alignment.center,
        padding: padding,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: DefaultTextStyle(
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
          child: child,
        ),
      );
}
