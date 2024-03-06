import 'package:flutter/material.dart';
import 'package:onboard_page/constants/app_colors.dart';
import 'package:onboard_page/ui/pages/onboard/widgets/login_button.dart';
import 'package:onboard_page/ui/pages/onboard/widgets/create_account.dart';

class LoginCreateAccount extends StatelessWidget {

  const LoginCreateAccount({ super.key, required this.onPressed });
  final void Function() onPressed;
   @override
   Widget build(BuildContext context) {
       return Column(
        children: [
          LoginButton(text: 'Log in', textColor: AppColors.white, backgroundColor: AppColors.blue, onPressed: onPressed),
          CreateAccount(text: 'Create account', textColor: AppColors.black, backgroundColor: AppColors.white, onPressed: onPressed)
        ],
       );
  }
}