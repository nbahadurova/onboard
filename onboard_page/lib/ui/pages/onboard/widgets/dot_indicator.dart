import 'package:flutter/material.dart';
import 'package:onboard_page/constants/app_colors.dart';
import 'package:onboard_page/models/onboard_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DotIndicator extends StatelessWidget {

   DotIndicator({ super.key, required this.onDotClicked });
  final PageController pageController = PageController();
  final items = OnboardModel.onboardItem; 
  final void Function(int) onDotClicked;
   @override
   Widget build(BuildContext context) {
       return SmoothPageIndicator(
                      controller: pageController, // PageController
                      count: items.length,
                      effect: const ExpandingDotsEffect(
                          dotColor: AppColors.grey,
                          dotHeight: 5,
                          activeDotColor:
                              AppColors.blue), // your preferred effect
                      onDotClicked: onDotClicked,
                      );
  }
}