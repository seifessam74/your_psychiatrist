import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:your_psychiatrist/core/helpers/spacing.dart';
import 'package:your_psychiatrist/core/theming/colors.dart';
import 'package:your_psychiatrist/core/theming/styles.dart';
import 'package:your_psychiatrist/core/widgets/app_text_button.dart';
import 'package:your_psychiatrist/core/widgets/app_text_form_field.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600.h,
      decoration: BoxDecoration(
        color: ColorsManager.mainBlue,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(60),
          topLeft: Radius.circular(60),
        ),
      ),
      child: Column(
        children: [
          verticalSpace(25),
          Form(
            key: formKey,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                children: [
                  verticalSpace(50),
                  AppTextFormField(
                    inputTextStyle: TextStyles.font16WhitePoppins,
                    hintText: 'Username',
                    prefixIcon: Icon(
                      Icons.person,
                      color: ColorsManager.formIconsColor,
                    ),
                  ),
                  verticalSpace(30),
                  AppTextFormField(
                    inputTextStyle: TextStyles.font16WhitePoppins,
                    hintText: 'mobile ',
                    prefixIcon: Icon(
                      Icons.phone,
                      color: ColorsManager.formIconsColor,
                    ),
                  ),
                  verticalSpace(30),
                  AppTextFormField(
                    inputTextStyle: TextStyles.font16WhitePoppins,
                    hintText: 'Email',
                    prefixIcon: Icon(
                      Icons.email,
                      color: ColorsManager.formIconsColor,
                    ),
                  ),
                  verticalSpace(30),
                  AppTextFormField(
                    inputTextStyle: TextStyles.font16WhitePoppins,
                    isObscureText: isObscureText,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isObscureText = !isObscureText;
                        });
                      },
                      child: Icon(
                        isObscureText ? Icons.visibility_off : Icons.visibility,
                        color: ColorsManager.formIconsColor,
                      ),
                    ),
                    hintText: 'Password',
                    prefixIcon: Icon(
                      Icons.lock,
                      color: ColorsManager.formIconsColor,
                    ),
                  ),
                  verticalSpace(20),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: GestureDetector(
                      // I will add the router later
                      onTap:
                          () {}, // context.pushNamed(Routes.forgotPassword)  must add the forgetPassword router in the routes.dart first
                      child: Text(
                        'Already an InnerHeal user ? Login',
                        style: TextStyles.font10WhitePoppins,
                      ),
                    ),
                  ),
                  verticalSpace(50),
                  AppTextButton(
                    buttonWidth: 200,
                    buttonHeight: 55,
                    buttonText: 'Register',
                    textStyle: TextStyles.font16BlueMidnightPoppins,
                    onPressed: () {
                      // Your login logic here
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
