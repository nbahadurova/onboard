import 'package:flutter/material.dart';
import 'package:onboard_page/constants/app_colors.dart';
import 'package:onboard_page/models/onboard_model.dart';
import 'package:onboard_page/constants/app_paddings.dart';
import 'package:onboard_page/ui/pages/onboard/widgets/buttons_view.dart';
import 'package:onboard_page/ui/pages/onboard/widgets/column_widget.dart';
import 'package:onboard_page/ui/pages/onboard/widgets/dot_indicator.dart';
import 'package:onboard_page/ui/pages/onboard/widgets/back_next_button.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    const items = OnboardModel.onboardItem;
    
    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: Padding(
          padding: AppPaddings.all25,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: PageView.builder(
                  controller: pageController,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ColumnWidget(onboardItem: items[index]);
                  },
                ),
              ),
                
              ButtonsView(pageController: pageController),
            ],
          ),
        ));
  }
}
