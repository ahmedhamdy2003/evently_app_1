import 'package:evently_app_1/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthTextField extends StatefulWidget {
  const AuthTextField({super.key, required this.prefixIconPath, this.hintText, this.password});
  final String prefixIconPath;
  final String? hintText;
  final bool? password;

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
late  bool isOsecure = widget.password ?? false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        obscureText: isOsecure,

        decoration: InputDecoration(
          suffixIcon: widget.password == true
              ? GestureDetector(
                  onTap: () {
                  
                    setState(() {
                        isOsecure = !isOsecure;
                    });
                  },
                  child: Icon(
                    isOsecure ? Icons.visibility_off_outlined : Icons.remove_red_eye_outlined,
                  ),
                )
              : null,
          hintText: widget.hintText,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SvgPicture.asset(
              widget.prefixIconPath,
              fit: BoxFit.scaleDown,
              // width: 24,
              // height: 20,
              colorFilter: ColorFilter.mode(
                Theme.of(context).hoverColor,
                BlendMode.srcIn,
              ),
            ),
          ),

          hintStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
            color: Theme.of(context).hoverColor,
          ),
          border: customBorder(),
          enabledBorder: customBorder(),
          focusedBorder: customBorder(focusColor: AppColors.mainColor),
        ),
      ),
    );
  }

  OutlineInputBorder customBorder({Color? focusColor}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: focusColor ?? Theme.of(context).hoverColor),
    );
  }
}
