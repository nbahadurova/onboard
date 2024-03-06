import 'package:flutter/material.dart';
import 'package:onboard_page/constants/app_colors.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key, required this.text, required this.textColor, required this.backgroundColor, required this.onPressed});
    final String text;
  final Color textColor;
  final Color backgroundColor;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              padding:
                  const EdgeInsets.only(top: 10, bottom: 10, left: 100, right: 100)),
          onPressed: onPressed,
          child:  Text(text,style: TextStyle(fontSize: 15,color: textColor),),
        )
      ],
    );
  }
}
