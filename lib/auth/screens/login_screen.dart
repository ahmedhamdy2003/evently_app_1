import 'package:evently_app_1/auth/widget/auth_text_field.dart';
import 'package:evently_app_1/common/app_assets.dart';
import 'package:evently_app_1/common/app_colors.dart';
import 'package:evently_app_1/common/custom_main_button.dart';
import 'package:evently_app_1/common/custom_text_styles.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/LoginScreen';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                AppAssets.logoImage,
                height: MediaQuery.of(context).size.height * .2,
              ),
              SizedBox(height: 15),
              AuthTextField(
                prefixIconPath: AppAssets.emailIcon,
                hintText:
                    'Enter your email', // TODO: Add localization for hint text
              ),
              AuthTextField(
                password: true,
                prefixIconPath: AppAssets.passwordIcon,
                hintText:
                    'Enter your password', // TODO: Add localization for hint text
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      // TODO: Implement forgot password functionality
                    },
                    child: Text(
                      'Forgot Password?',
                      style: CustomTextStyles.style18W500Black.copyWith(
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.mainColor,
                        color: AppColors.mainColor,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ],
              ),
              CustomMainButton(title: 'Login',
               onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
