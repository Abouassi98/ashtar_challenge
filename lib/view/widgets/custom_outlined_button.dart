import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  final double width;
  final double height;
  final double fontSize;
  final Color borderColor;
  final Color textColor;
  final bool isThereIcon;
  final Widget? icon;
  final Function? onTap;
  final String? text;

   const CustomOutlinedButton(
      {Key? key,  this.text,
      this.fontSize = 16,
      this.width = 100,
      this.height = 35,
      this.borderColor = const Color(0xff49ccc4),
      this.textColor = const Color(0xff49ccc4),
      this.isThereIcon = false,
      this.icon,
      this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap as void Function()?,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          border: Border.all(width: 1.5, color: const Color(0xff49ccc4),),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isThereIcon ? icon! : Container(),
              const SizedBox(width: 10,),
              Text(
                text!,
                style: TextStyle(
                  fontFamily: 'Almarai',
                  fontSize: fontSize,
                  color: const Color(0xff49ccc4),fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
