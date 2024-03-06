import 'package:flutter/material.dart';

class BackNextButton extends StatelessWidget {
  const BackNextButton(
      {super.key,
      required this.text,
      required this.color,
      required this.onTap});
  final String text;
  final Color color;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Text(
          text,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: color),
        ));
  }
}
