import 'package:flutter/material.dart';
import 'package:onboard_page/constants/app_colors.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
          fontSize: 32, fontWeight: FontWeight.bold, color: AppColors.black),
    );
  }
}
