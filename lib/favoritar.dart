library favoritar;

import 'package:flutter/material.dart';

class TextButton extends StatelessWidget {
  const TextButton({
    required this.icon,
    required this.splashColor,
    this.onPressed,
    this.size,
    this.tooltip,
    this.constraints,
    this.hideBadgeZero = false,
    super.key,
  });

  final VoidCallback? onPressed;
  final Widget icon;
  final String? tooltip;
  final double? size;
  final Color splashColor;
  final BoxConstraints? constraints;
  final bool hideBadgeZero;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        IconButton(
          onPressed: onPressed,
          splashColor: splashColor.withOpacity(0.2),
          focusColor: splashColor.withOpacity(0.2),
          hoverColor: splashColor.withOpacity(0.2),
          highlightColor: splashColor.withOpacity(0.2),
          icon: icon,
          alignment: Alignment.center,
          tooltip: tooltip,
          padding: const EdgeInsets.all(0),
          constraints: constraints,
          iconSize: size,
        ),
      ],
    );
  }
}
