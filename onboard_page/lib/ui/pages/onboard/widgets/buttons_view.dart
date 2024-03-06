import 'package:flutter/material.dart';
import 'package:onboard_page/models/onboard_model.dart';
import 'package:onboard_page/constants/app_colors.dart';
import 'package:onboard_page/ui/pages/onboard/widgets/dot_indicator.dart';
import 'package:onboard_page/ui/pages/onboard/widgets/back_next_button.dart';

class ButtonsView extends StatefulWidget {
  const ButtonsView({super.key, required this.pageController});
  final PageController pageController;

  @override
  State<ButtonsView> createState() => _ButtonsViewState();
}

class _ButtonsViewState extends State<ButtonsView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        if (currentIndex != widget.pageController.initialPage) 
          
        BackNextButton(
          text: 'Back',
          color: AppColors.grey,
          onTap: () {
            widget.pageController.jumpToPage(currentIndex - 1);
              setState(() {});
          },
        ),
        
        
        DotIndicator(onDotClicked: (i) => widget.pageController.jumpTo(i.toDouble()),),
        BackNextButton(
          text: 'Next',
          color: AppColors.blue,
          onTap: () async {
            if (!isLastPage) {
              widget.pageController.jumpToPage(currentIndex + 1);
              setState(() {});
              return;
            }
            // final SharedPreferences preferences =
            //     await SharedPreferences.getInstance();
            // await preferences.setBool('onboard', true).then((v) {
            //   Navigator.pushReplacement(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => const LoginPage(),
            //     ),
            //   );
            // });}
          }
        )
      ],
    );
  }
  int get currentIndex => widget.pageController.page?.toInt() ?? 0;

  bool get isLastPage => currentIndex == OnboardModel.onboardItem.length - 1;
}
