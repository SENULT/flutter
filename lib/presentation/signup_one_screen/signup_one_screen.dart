import 'package:flutter/material.dart';
import 'package:one_s_application1/core/app_export.dart';
import 'package:one_s_application1/widgets/custom_elevated_button.dart';
import 'package:one_s_application1/widgets/custom_outlined_button.dart';
import 'package:one_s_application1/widgets/custom_text_form_field.dart';

class SignupOneScreen extends StatelessWidget {
  SignupOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController languageController = TextEditingController();

  TextEditingController emailController = TextEditingController();

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
                        "Signup",
                        style: theme.textTheme.headlineMedium,
                      ),
                    ),
                    SizedBox(height: 11.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Please signup to get your local AQI data.",
                        style: CustomTextStyles.bodyLargeGray900,
                      ),
                    ),
                    SizedBox(height: 24.v),
                    _buildLanguage(context),
                    SizedBox(height: 8.v),
                    _buildEmail(context),
                    SizedBox(height: 24.v),
                    _buildSignupButton(context),
                    SizedBox(height: 27.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Have an account?",
                            style: CustomTextStyles.bodyMediumff6b7280,
                          ),
                          TextSpan(
                            text: " Login",
                            style: CustomTextStyles.bodyMediumff1882ff,
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
                    _buildLoginWithGoogleButton(context),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLanguage(BuildContext context) {
    return CustomTextFormField(
      controller: languageController,
      hintText: "|",
      hintStyle: CustomTextStyles.bodyMediumEpilogueGray900,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(16.h, 16.v, 8.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgIconProfile,
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
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      hintText: "Your email address",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.emailAddress,
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
  Widget _buildSignupButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Signup",
    );
  }

  /// Section Widget
  Widget _buildLoginWithGoogleButton(BuildContext context) {
    return CustomOutlinedButton(
      text: "Login with Google",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 10.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgBrandLogoIcons,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlineGrayTL12,
    );
  }
}
