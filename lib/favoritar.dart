library favoritar;

import 'package:flutter/material.dart';

class Favoritar extends StatelessWidget {
  const Favoritar({
    required this.icon,
    this.onPressed,
    this.splashColor,
    this.tooltip,
    this.size,
    this.constraints,
    this.badge,
    this.color,
    this.hideBadgeZero = false,
    super.key,
  });

  final VoidCallback? onPressed;
  final IconData icon;
  final String? tooltip;
  final double? size;
  final Color? splashColor;
  final BoxConstraints? constraints;
  final String? badge;
  final bool hideBadgeZero;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        IconButton(
          onPressed: onPressed,
          splashColor: splashColor!.withOpacity(0.2),
          focusColor: splashColor!.withOpacity(0.2),
          hoverColor: splashColor!.withOpacity(0.2),
          highlightColor: splashColor!.withOpacity(0.2),
          icon: Icon(
            icon,
            size: size,
            color: color,
          ),
          alignment: Alignment.center,
          padding: const EdgeInsets.all(0),
          constraints: constraints,
        ),
      ],
    );
  }
}
