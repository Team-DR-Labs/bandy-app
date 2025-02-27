import 'package:flutter/material.dart';

final class GridBorderLayout extends StatelessWidget {
  const GridBorderLayout({
    super.key,
    this.direction = Axis.vertical,
    this.padding = const EdgeInsets.all(12.0),
    this.left = true,
    this.top = true,
    this.right = true,
    this.bottom = true,
    this.borderThickness = 1.0,
    required this.child,
  });

  final Axis direction;

  final EdgeInsetsGeometry padding;

  final bool left;
  final bool top;
  final bool right;
  final bool bottom;

  final double borderThickness;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        border: Border(
          top: top
              ? BorderSide(
                  color: Colors.white,
                  width: borderThickness,
                )
              : BorderSide.none,
          left: left
              ? BorderSide(
                  color: Colors.white,
                  width: borderThickness,
                )
              : BorderSide.none,
          bottom: bottom
              ? BorderSide(
                  color: Colors.white,
                  width: borderThickness,
                )
              : BorderSide.none,
          right: right
              ? BorderSide(
                  color: Colors.white,
                  width: borderThickness,
                )
              : BorderSide.none,
        ),
      ),
      child: child,
    );
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
