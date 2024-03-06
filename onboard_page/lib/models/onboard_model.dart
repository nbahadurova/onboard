import 'package:onboard_page/constants/app_images.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first

class OnboardModel {
  final String title;
  final String text;
  final String image;
  const OnboardModel({
    required this.title,
    required this.text,
    required this.image,
  });
  static const List<OnboardModel> onboardItem = [
    OnboardModel(
        title: 'Fabulous or free',
        text: 'Enjoy a fabullous hospitality else\n               we pay for you.',
        image: AppImages.image1),
    OnboardModel(
        title: 'Manage booking',
        text: 'Booking & cancellation anytime,\n         anywhere you want to.',
        image: AppImages.image2),
    OnboardModel(
        title: 'Find best deals',
        text: 'Stay with us and find best deals\n                on every stay.',
        image: AppImages.image3)
  ];
}
