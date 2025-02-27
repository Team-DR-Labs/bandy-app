import 'package:flutter/material.dart';

final class DescriptionContainer extends StatelessWidget {
  const DescriptionContainer({
    super.key,
    required this.title,
    required this.description,
    this.padding = const EdgeInsets.all(12.0),
    this.spacing = 0.0,
  });

  final Widget title;
  final Widget description;

  final EdgeInsetsGeometry padding;

  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        DefaultTextStyle(
          // TODO: NULL CHECK
          style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
          child: title,
        ),
        SizedBox(height: spacing),
        DefaultTextStyle(
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
          child: description,
        ),
      ],
    );
  }
}
