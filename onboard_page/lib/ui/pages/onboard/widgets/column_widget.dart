import 'package:flutter/material.dart';
import 'package:onboard_page/models/onboard_model.dart';
import 'package:onboard_page/ui/pages/onboard/widgets/title_widget.dart';
import 'package:onboard_page/ui/pages/onboard/widgets/description_text.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key, required this.onboardItem});
  final OnboardModel onboardItem;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: 300, width: 300, child: Image.asset(onboardItem.image)),
        TitleWidget(title: onboardItem.title),
        DescriptionText(descriptionText: onboardItem.text)
      ],
    );
  }
}
