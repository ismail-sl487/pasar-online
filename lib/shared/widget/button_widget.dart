import 'package:flutter/material.dart';
import 'package:pwa_melijo/shared/text_style.dart';

class ButtonLayout extends StatelessWidget {
  const ButtonLayout({ Key? key,this.onPress,this.fontColor = Colors.white,this.radius = 5,this.color = Colors.white,required this.title}) : super(key: key);
  final Color color;
  final double radius;
  final Color fontColor;
  final Function()? onPress;
  final String title;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPress,
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(vertical: 13),
          ),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius))),
          side: MaterialStateProperty.all(BorderSide(color: fontColor, width: 1.0, style: BorderStyle.solid))),
      child: WidgetText(
        text: title,
        color: fontColor,
      ),
    );
  }
}