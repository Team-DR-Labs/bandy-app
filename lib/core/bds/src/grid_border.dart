import 'package:flutter/material.dart';

final class GridBorderLayout extends StatelessWidget {
  const GridBorderLayout({
    super.key,
    this.direction = Axis.vertical,
    this.padding = const EdgeInsets.all(12.0),
    this.screenSpacing = 4.0,
    this.left = true,
    this.top = false,
    this.right = true,
    this.bottom = true,
    this.borderThickness = 1.0,
    required this.child,
  });

  const GridBorderLayout.horizontal({
    super.key,
    this.padding = const EdgeInsets.all(12.0),
    this.screenSpacing = 4.0,
    this.left = false,
    this.top = true,
    this.right = true,
    this.bottom = true,
    this.borderThickness = 1.0,
    required this.child,
  }) : direction = Axis.horizontal;

  final Axis direction;

  final EdgeInsetsGeometry padding;
  final double screenSpacing;

  final bool left;
  final bool top;
  final bool right;
  final bool bottom;

  final double borderThickness;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: switch (direction) {
          Axis.horizontal => Border(
              left: left
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
          Axis.vertical => Border(
              top: top
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
            ),
        },
      ),
      child: Container(
        margin: switch (direction) {
          Axis.horizontal => EdgeInsets.symmetric(
              vertical: screenSpacing,
            ),
          Axis.vertical => EdgeInsets.symmetric(
              horizontal: screenSpacing,
            ),
        },
        padding: padding,
        decoration: BoxDecoration(
          border: switch (direction) {
            Axis.horizontal => Border(
                top: top
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
              ),
            Axis.vertical => Border(
                left: left
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
          },
        ),
        child: child,
      ),
    );
  }
}

final class GridBorderSpacer extends StatelessWidget {
  const GridBorderSpacer({
    super.key,
    required this.direction,
    this.screenSpacing = 4.0,
    this.left = true,
    this.top = false,
    this.right = true,
    this.bottom = true,
    this.borderThickness = 1.0,
    required this.width,
    required this.height,
  });

  const GridBorderSpacer.horizontal({
    super.key,
    this.screenSpacing = 4.0,
    this.left = false,
    this.top = true,
    this.right = true,
    this.bottom = true,
    this.borderThickness = 1.0,
    required this.width,
  })  : direction = Axis.horizontal,
        height = double.infinity;

  const GridBorderSpacer.vertical({
    super.key,
    this.screenSpacing = 4.0,
    this.left = true,
    this.top = false,
    this.right = true,
    this.bottom = true,
    this.borderThickness = 1.0,
    required this.height,
  })  : direction = Axis.vertical,
        width = double.infinity;

  final Axis direction;

  final double screenSpacing;

  final bool left;
  final bool top;
  final bool right;
  final bool bottom;

  final double borderThickness;

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return GridBorderLayout(
      direction: direction,
      padding: EdgeInsets.zero,
      screenSpacing: screenSpacing,
      left: left,
      top: top,
      right: right,
      bottom: bottom,
      child: SizedBox(
        width: width,
        height: height,
      ),
    );
  }
}
