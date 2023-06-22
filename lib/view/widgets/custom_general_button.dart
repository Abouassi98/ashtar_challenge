import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final Function? onTap;
  final Color? backGroundColor;
  final Color? textColor;
  final BoxDecoration? decoration;
  final double? high;
  final double? width;
  final Widget? child;
  const CustomButton(
      {Key? key,
      this.text,
      this.onTap,
      this.backGroundColor,
      this.textColor,
      this.decoration,
      this.high,
      this.width,
      this.child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap as void Function()?,
      child: Container(
        height: high,
        width: width,
        padding: const EdgeInsets.symmetric(vertical: 6),
        decoration: const BoxDecoration(
            color: Color(0xff49ccc4),
            borderRadius: BorderRadius.all(Radius.circular(6))),
        child: Center(
          child: text != null
              ? Text(
                  text!,
                  style: TextStyle(
                    fontFamily: 'Almarai',
                    fontSize: 14,
                    color: textColor ?? Colors.white,
                  ),
                  textAlign: TextAlign.left,
                )
              : child,
        ),
      ),
    );
  }
}
