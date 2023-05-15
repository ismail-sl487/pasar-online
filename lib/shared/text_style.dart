import 'package:flutter/material.dart';

class WidgetText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final int? maxLines;
  final double? lineHeight;
  final TextAlign? textAlign;
  final double? heightSpacingText;
  final FontStyle? fontStyle;
  final double? letterSpacing;
  const WidgetText(
      {Key? key,
      required this.text,
      this.fontSize,
      this.textAlign,
      this.fontWeight,
      this.fontStyle,
      this.lineHeight,
      this.heightSpacingText = 1,
      this.color,
      this.maxLines = 5,
      this.letterSpacing = 0.2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: maxLines,
      textAlign: textAlign ?? TextAlign.left,
      text: TextSpan(
          text: text,
          style: TextStyle(
              height: heightSpacingText,
              letterSpacing: letterSpacing,
              overflow: TextOverflow.ellipsis,
              fontStyle: fontStyle ?? null,
              color: color ?? Colors.green.shade400,
              fontWeight: fontWeight ?? FontWeight.w400,
              fontFamily: 'Gotham',
              fontSize: fontSize ?? 14)),
    );

    // Text(
    //   text,
    //   textAlign: textAlign ?? TextAlign.left,
    //   overflow: TextOverflow.ellipsis,
    //   style: TextStyle(
    //     color: color ?? primaryColor,
    //     fontWeight: fontWeight ?? FontWeight.w400,
    //     fontSize: fontSize ?? 14,
    //     fontFamily: "Gotham",
    //   ),
    //   maxLines: maxLines,
    // );
  }
}