import 'package:atlas/Core/extentions/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Core/config/page_route_name.dart';
import '../../../../Core/constants/app_colors.dart';
import '../../../../Core/constants/app_images.dart';
import '../../../../Core/widgets/custom_elevated_button.dart';
import '../../../../Core/widgets/custom_text_form_field.dart';
import '../../../../Core/widgets/gap.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // const GapH(h: 8),
                Image.asset(
                  AppConstants.logo,
                  color: AppColors.secondColorBlue,
                  height: 130.h,
                  width: 130.w,
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 18.w, vertical: 12.h),
                      padding: EdgeInsets.only(
                          bottom: 55.h, left: 15.w, right: 15.w, top: 10.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32.r),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 8,
                            color: Colors.grey,
                            offset: Offset(3, 5),
                          ),
                        ],
                        color: AppColors.secondColorBlue,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Hello! Make a new account",
                                  style: textTheme.bodyLarge?.copyWith(color: Colors.white),
                                  textAlign: TextAlign.center),
                            ],
                          ),
                          const GapH(h: 3),
                          Text(
                            "Name",
                            style: textTheme.bodySmall?.copyWith(color: Colors.white,
                                fontWeight: FontWeight.w200, fontSize: 14),
                          ),
                          CustomTextFormField(
                            controller: userNameController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter your name";
                              }
                              return null;
                            },
                            labelText: "Enter your name",
                          ),
                          const GapH(h: 1),
                          Text(
                            "Email Address",
                            style: textTheme.bodySmall?.copyWith(color: Colors.white,
                                fontWeight: FontWeight.w200, fontSize: 14),
                          ),
                          CustomTextFormField(
                            controller: emailController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter your E-mail";
                              }
                              return null;
                            },
                            labelText: "Enter your E-mail",
                            hintText: "example@gmail.com",
                          ),
                          const GapH(h: 1),
                          Text(
                            "Phone Number",
                            style: textTheme.bodySmall?.copyWith(color: Colors.white,
                                fontWeight: FontWeight.w200, fontSize: 14),
                          ),
                          CustomTextFormField(
                            controller: phoneController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter your phone no";
                              }
                              return null;
                            },
                            labelText: "Enter your phone no",
                            hintText: "01234567890",
                          ),
                          const GapH(h: 1),
                          Text("Password", style: textTheme.bodySmall?.copyWith(color: Colors.white,
                              fontWeight: FontWeight.w200, fontSize: 14),),
                          CustomTextFormField(
                            controller: passwordController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "please enter your Password ";
                              }
                              return null;
                            },
                            isSecure: isPasswordVisible,
                            suffixIcon: isPasswordVisible
                                ? Icons.visibility_off
                                : Icons.visibility,
                            suffixPressed: () {
                              setState(() {});
                              isPasswordVisible = !isPasswordVisible;
                            },
                            labelText: "Enter your Password",
                            hintText: "P@ssW0rd321",
                          ),
                          const GapH(h: 1),
                          Text("Re-Password", style: textTheme.bodySmall?.copyWith(color: Colors.white,
                              fontWeight: FontWeight.w200, fontSize: 14),),
                          CustomTextFormField(
                            controller: passwordController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "please confirm your Password ";
                              }
                              return null;
                            },
                            isSecure: isPasswordVisible,
                            suffixIcon: isPasswordVisible
                                ? Icons.visibility_off
                                : Icons.visibility,
                            suffixPressed: () {
                              setState(() {});
                              isPasswordVisible = !isPasswordVisible;
                            },
                            labelText: "confirm your Password",
                            hintText: "P@ssW0rd321",
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: -1.h,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: CustomElevatedButton(
                          width: 220.w,
                          backgroundColor: AppColors.primaryColorBeige,
                          title: Text("Sign up", style: textTheme.bodyMedium),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.pushReplacementNamed(
                                  context, PageRouteName.home);
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const GapH(h: 2),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, PageRouteName.login);
                  },
                  child: RichText(
                    text: TextSpan(
                      text: "Already have An Account? ",
                      style: textTheme.bodySmall,
                      children: [
                        TextSpan(
                          text: "Login here",
                          style: textTheme.bodySmall?.copyWith(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            color: AppColors.secondColorBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ).setVerticalPadding(context, 0.01),
          ),
        ),
      ),
    );
  }
}


