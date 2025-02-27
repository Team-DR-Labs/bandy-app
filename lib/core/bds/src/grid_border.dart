import 'package:flutter/material.dart';

final class GridBorderLayout extends StatelessWidget {
  const GridBorderLayout({
    super.key,
    this.left = true,
    this.top = true,
    this.right = true,
    this.bottom = true,
    this.borderThickness = 1.0,
    required this.child,
  });

  final bool left;
  final bool top;
  final bool right;
  final bool bottom;

  final double borderThickness;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

final class GridBorderSpacer extends StatelessWidget {
  const GridBorderSpacer({super.key});

  const GridBorderSpacer.horizontal();

  const GridBorderSpacer.vertical();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
