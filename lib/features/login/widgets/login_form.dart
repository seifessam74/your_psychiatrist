import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:your_psychiatrist/core/helpers/spacing.dart';
import 'package:your_psychiatrist/core/theming/colors.dart';
import 'package:your_psychiatrist/core/theming/styles.dart';
import 'package:your_psychiatrist/core/widgets/app_text_button.dart';
import 'package:your_psychiatrist/core/widgets/app_text_form_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 555.h,
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
                    hintText: 'Email',
                    prefixIcon: Icon(
                      Icons.email,
                      color: ColorsManager.formIconsColor,
                    ),
                  ),
                  verticalSpace(50),
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
                        'Forget Password ?',
                        style: TextStyles.font10WhitePoppins,
                      ),
                    ),
                  ),
                  verticalSpace(100),
                  AppTextButton(
                    buttonWidth: 200,
                    buttonHeight: 55,
                    buttonText: 'Log In',
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
