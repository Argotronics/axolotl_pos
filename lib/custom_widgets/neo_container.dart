import 'package:flutter/material.dart';

class NeoContainer extends StatelessWidget {
  final Widget child;
  final BoxConstraints? constraints;
  final double? height;
  final double? width;
  final BoxDecoration? decoration;

  const NeoContainer({
    super.key,
    required this.child,
    this.constraints,
    this.height,
    this.width,
    this.decoration,
  });
  // figure this out with the neo-library you wrote earlier
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: constraints,
      height: height,
      width: width,
      decoration:
          decoration ??
          BoxDecoration(
            color: Colors.grey[850],
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(4, 4),
                blurRadius: 8,
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(-4, -4),
                blurRadius: 8,
              ),
            ],
          ),
      child: child,
    );
  }
}
