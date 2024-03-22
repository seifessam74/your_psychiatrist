import 'package:flutter/material.dart';
import 'package:your_psychiatrist/core/theming/colors.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle; // Updated this line
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final Widget? prefixIcon;

  const AppTextFormField({
    Key? key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle, // Updated this line
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: inputTextStyle, // Updated this line
      decoration: InputDecoration(
        focusedBorder: focusedBorder ??
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        enabledBorder: enabledBorder ??
            UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(255, 255, 255, 0.47),
              ),
            ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: TextStyle(
          color: ColorsManager.formTextColor,
        ),
      ),
      obscureText: isObscureText ?? false,
    );
  }
}
