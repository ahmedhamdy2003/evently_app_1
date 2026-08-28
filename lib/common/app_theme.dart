import 'package:evently_app_1/common/app_colors.dart';
import 'package:evently_app_1/common/custom_text_styles.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    hoverColor: AppColors.grayColor,

    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.mainColor),
    scaffoldBackgroundColor: AppColors.secLightColor,

    textTheme: TextTheme(
      bodySmall: CustomTextStyles.style14W400Black,
      bodyMedium: CustomTextStyles.style16W400Black,
      bodyLarge: CustomTextStyles.style18W400Black,

      labelSmall: CustomTextStyles.style14W500Black,
      labelMedium: CustomTextStyles.style16W500Black,
      labelLarge: CustomTextStyles.style18W500Black,

      titleSmall: CustomTextStyles.style14W700Black,
      titleMedium: CustomTextStyles.style16W700Black,
      titleLarge: CustomTextStyles.style18W700Black,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontFamily: 'Rag',
        fontSize: 22,
        fontWeight: FontWeight.w500,
      ),
      iconTheme: IconThemeData(color: AppColors.mainColor),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    hoverColor: AppColors.mainColor,
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.mainColor,
      brightness: Brightness.dark,
    ),

    textTheme: TextTheme(
      bodySmall: CustomTextStyles.style14W400White,
      bodyMedium: CustomTextStyles.style16W400White,
      bodyLarge: CustomTextStyles.style18W400White,

      labelSmall: CustomTextStyles.style14W500White,
      labelMedium: CustomTextStyles.style16W500White,
      labelLarge: CustomTextStyles.style18W500White,

      titleSmall: CustomTextStyles.style14W700White,
      titleMedium: CustomTextStyles.style16W700White,
      titleLarge: CustomTextStyles.style18W700White,
    ),

    scaffoldBackgroundColor: AppColors.secDarkColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,

      centerTitle: true,
      titleTextStyle: TextStyle(
        fontFamily: 'Rag',
        fontSize: 22,
        fontWeight: FontWeight.w500,
      ),
      iconTheme: IconThemeData(color: AppColors.mainColor),
    ),
  );
}
