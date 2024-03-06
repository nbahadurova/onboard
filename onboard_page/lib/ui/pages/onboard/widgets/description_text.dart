import 'package:flutter/material.dart';
import 'package:onboard_page/constants/app_colors.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({super.key, required this.descriptionText});
  final String descriptionText;
  @override
  Widget build(BuildContext context) {
    return Text(
      descriptionText,
      style: const TextStyle(
          fontSize: 17, fontWeight: FontWeight.w400, color: AppColors.grey),
    );
  }
}
