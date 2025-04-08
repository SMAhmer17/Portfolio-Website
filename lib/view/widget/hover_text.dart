import 'package:ahmerportfolio/core/extension.dart';
import 'package:ahmerportfolio/theme/theme.dart';
import 'package:flutter/material.dart';

class HoverText extends StatefulWidget {
  final String text;
  // final TextStyle? style;
  // final Color hoverColor;
  final void Function()? onPressed;

  const HoverText({
    super.key,
    required this.text,
    this.onPressed,
    // required this.hoverColor,
    // required this.normalColor,
    // this.style,
  });

  @override
  State<HoverText> createState() => _HoverTextState();
}

class _HoverTextState extends State<HoverText> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: TextButton(
        onPressed: widget.onPressed,

        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.transparent),
        ),
        child: AnimatedDefaultTextStyle(
          duration: Duration(milliseconds: 200),
          style:
              context.bodyLarge?.copyWith(
                color:
                    isHovered
                        ? context.colors.primary
                        : context.colors.tertiary,
              ) ??
              TextStyle(),
          child: Text(widget.text),
        ),
      ),
    );
  }
}
