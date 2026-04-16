import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furnicraft_aap/screens/auth/widgets/custom_or_login_widget.dart';
import 'package:furnicraft_aap/screens/auth/widgets/social_login_button.dart';

import '../../styling/app_colors.dart';
import '../../styling/app_styles.dart';
import '../../widgets/back_button_widget.dart';
import '../../widgets/custom_double_text.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/primary_button_widget.dart';
import '../../widgets/spacing_widget.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.whiteColor,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child:Form(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const HeightSpace(height: 12),
                    BackButtonWidget(),
                    const HeightSpace(height: 28),
                    SizedBox(
                      width: 331.w,
                      child: Text(
                        "Hello! Register to get started",
                        style: AppStyles.primaryHeadlineStyle,
                      ),
                    ),
                    const HeightSpace(height: 32),
                    CustomTextField(
                      hintText: "Username",
                      validator: (value){
                        if(value!.isEmpty){
                          return "Enter your username";
                        }
                        return null;
                      },
                    ),
                    const HeightSpace(height: 12),
                    CustomTextField(
                      hintText: "Email",
                      validator: (value){
                        if(value!.isEmpty){
                          return "Enter your email";
                        }
                        return null;
                      },
                    ),
                    const HeightSpace(height: 12),
                    CustomTextField(
                      hintText: "Password",
                      validator: (value){
                        if(value!.isEmpty){
                          return "Enter your password";
                        }
                        if(value.length<8){
                          return "password must be at least 8 characters";
                        }
                        return null;
                      },
                    ),
                    const HeightSpace(height: 12),
                    CustomTextField(
                      hintText: "Confirm Password",

                    ),
                    const HeightSpace(height: 30),
                    PrimaryButtonWidget(
                      buttonText: "Register",
                      onPress: (){
                      },
                    ),
                    const HeightSpace(height: 35),
                    CustomOrTextWidget(doText: 'Register',),
                    const HeightSpace(height: 22),
                    SocialLoginButton(),
                    const HeightSpace(height: 50),
                    CustomDoubleText(headText: "Already have an account ", subText: "Login Now",),
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
