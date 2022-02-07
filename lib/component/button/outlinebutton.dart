import 'package:flutter/material.dart';
import 'package:flutter_init/theme.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonOutline extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final double size;
  final double border;
  final double radius;
  final bool selected;
  final String showIcon;
  final bool iconOnly;
  final Icon iconLeft;
  final Icon iconRight;
  final EdgeInsetsGeometry margin;
  final Color bgcolor;
  final Color color;
  final bool shadow;
  final bool inverted;
  final bool justify;
  final VoidCallback onPressed;
  const ButtonOutline({
    Key? key,
    this.title = 'Label',
    this.color = AppColors.appPrimary,
    this.bgcolor = AppColors.textPrimary,
    this.size = 15,
    this.border = 1,
    this.radius = 0,
    required this.onPressed,
    this.width = 100,
    this.height = 50,
    this.margin = const EdgeInsets.only(
      top: 5,
      bottom: 5,
    ),
    this.shadow = true,
    this.inverted = false,
    this.selected = false,
    this.showIcon = 'none',
    this.iconOnly = false,
    this.iconLeft = const Icon(FlutterRemix.user_line),
    this.iconRight = const Icon(FlutterRemix.user_line),
    this.justify = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        boxShadow: [
          if (shadow)
            const BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.20000000298023224),
                offset: Offset(0, 3),
                blurRadius: 3)
        ],
      ),
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          primary: inverted ? bgcolor : color,
          backgroundColor: inverted ? color : bgcolor,
          side: BorderSide(
              color: border > 0
                  ? inverted
                      ? bgcolor
                      : color
                  : Colors.transparent,
              width: border),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        child: selected
            ? const Icon(
                FlutterRemix.checkbox_circle_fill,
                color: Color(0xFF12A9DD),
                size: 20,
              )
            : iconOnly
                ? iconLeft
                : Row(
                    mainAxisAlignment: justify
                        ? MainAxisAlignment.spaceBetween
                        : MainAxisAlignment.center,
                    children: [
                      if (showIcon == 'left' || showIcon == 'both')
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 5,
                          ),
                          child: iconLeft,
                        ),
                      Text(
                        title,
                        style: Theme.of(context).textTheme.button!.copyWith(
                              color: inverted ? bgcolor : color,
                              fontSize: size,
                            ),
                      ),
                      if (showIcon == 'right' || showIcon == 'both')
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                          ),
                          child: iconRight,
                        ),
                    ],
                  ),
      ),
    );
  }
}
