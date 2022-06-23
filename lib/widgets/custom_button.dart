import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  @required
  final double height;
  @required
  final double width;
  @required
  final String text;
  final Color buttonColor;
  final Color textColor;
  final double boxradius;
  double fontsize;
  final double borderwidth;
  final Color borderColor;
  Function onPress;
  CustomButton({
    Key? key,
    required this.height,
    required this.width,
    required this.text,
    this.buttonColor = Colors.black26,
    this.textColor = Colors.black,
    this.boxradius = 5,
    this.fontsize = 0,
    this.borderwidth = 0,
    this.borderColor = Colors.black,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    fontsize = (fontsize == 0) ? height / 2 : fontsize;
    return InkWell(
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(boxradius),
          border: Border.all(width: borderwidth, color: borderColor),
        ),
        // ignore: sort_child_properties_last
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: textColor,
              fontSize: fontsize,
              fontWeight: FontWeight.bold),
        ),
        alignment: Alignment.center,
      ),
      onTap: () => onPress(text),
    );
  }
}
