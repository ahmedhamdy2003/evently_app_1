import 'package:evently_app_1/common/app_colors.dart';
import 'package:evently_app_1/common/custom_text_styles.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomMainButton extends StatelessWidget {
  CustomMainButton({super.key, this.onPressed, required this.title});
  final void Function()? onPressed;
  String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: FilledButton(
        style: FilledButton.styleFrom(backgroundColor:AppColors.mainColor,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
        onPressed: onPressed,
        child: Text(
          title,
          style: CustomTextStyles.style18W500White.copyWith(fontSize: 20,color: Colors.white),
        ),
      ),
    );
  }
}
