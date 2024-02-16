import 'package:flutter/material.dart';
import 'package:one_s_application1/core/app_export.dart';
import 'package:one_s_application1/widgets/custom_checkbox_button.dart';
import 'package:one_s_application1/widgets/custom_elevated_button.dart';
import 'package:one_s_application1/widgets/custom_outlined_button.dart';
import 'package:one_s_application1/widgets/custom_text_form_field.dart';

class LoginOneScreen extends StatelessWidget {
  LoginOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController languageEditTextController = TextEditingController();

  TextEditingController passwordEditTextController = TextEditingController();

  bool rememberMe = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroupBlue600,
                      height: 226.v,
                      width: 260.h,
                    ),
                    SizedBox(height: 28.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Login",
                        style: theme.textTheme.headlineMedium,
                      ),
                    ),
                    SizedBox(height: 11.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Please login to get your local AQI data.",
                        style: CustomTextStyles.bodyLargeGray900,
                      ),
                    ),
                    SizedBox(height: 24.v),
                    _buildLanguageEditText(context),
                    SizedBox(height: 8.v),
                    _buildPasswordEditText(context),
                    SizedBox(height: 18.v),
                    _buildForgetPassRow(context),
                    SizedBox(height: 26.v),
                    _buildLoginButton(context),
                    SizedBox(height: 27.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Don’t have an account?",
                            style: CustomTextStyles.bodyMediumff6b7280,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "Signup",
                            style: CustomTextStyles.titleSmallff1882ff,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 27.v),
                    Text(
                      "Or login with",
                      style: CustomTextStyles.bodyMediumBluegray300,
                    ),
                    SizedBox(height: 7.v),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildLoginWithGoogleButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildLanguageEditText(BuildContext context) {
    return CustomTextFormField(
      controller: languageEditTextController,
      hintText: "|",
      hintStyle: CustomTextStyles.bodyMediumEpilogueGray900,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(16.h, 16.v, 8.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgIconMail,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordEditText(BuildContext context) {
    return CustomTextFormField(
      controller: passwordEditTextController,
      hintText: "Your password",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(16.h, 16.v, 8.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgIconPassword,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgIconShowoutline,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
      obscureText: true,
      contentPadding: EdgeInsets.symmetric(vertical: 18.v),
    );
  }

  /// Section Widget
  Widget _buildForgetPassRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomCheckboxButton(
          text: "Remember me",
          value: rememberMe,
          padding: EdgeInsets.symmetric(vertical: 1.v),
          onChange: (value) {
            rememberMe = value;
          },
        ),
        Text(
          "Forgot password?",
          style: CustomTextStyles.titleSmallPrimary,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Login",
    );
  }

  /// Section Widget
  Widget _buildLoginWithGoogleButton(BuildContext context) {
    return CustomOutlinedButton(
      text: "Login with Google",
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 36.v,
      ),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 10.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgBrandLogoIcons,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
    );
  }
}
