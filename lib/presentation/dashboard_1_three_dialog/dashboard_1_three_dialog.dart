import 'package:flutter/material.dart';
import 'package:one_s_application1/core/app_export.dart';
import 'package:one_s_application1/widgets/custom_checkbox_button.dart';
import 'package:one_s_application1/widgets/custom_elevated_button.dart';
import 'package:one_s_application1/widgets/custom_outlined_button.dart';
import 'package:one_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class Dashboard1ThreeDialog extends StatelessWidget {
  Dashboard1ThreeDialog({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  bool rememberMeCheckbox = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.h,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 32.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Text(
            "Login",
            style: theme.textTheme.headlineMedium,
          ),
          SizedBox(height: 11.v),
          Text(
            "Please login to get your local AQI data.",
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 33.v),
          _buildEmailField(context),
          SizedBox(height: 8.v),
          _buildPasswordField(context),
          SizedBox(height: 18.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildRememberMeCheckbox(context),
              Text(
                "Forgot password?",
                style: CustomTextStyles.titleSmallPrimary,
              ),
            ],
          ),
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
            style: CustomTextStyles.titleSmallBluegray300,
          ),
          SizedBox(height: 7.v),
          _buildLoginWithGoogleButton(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return CustomTextFormField(
      controller: emailFieldController,
      hintText: "Your email address",
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
  Widget _buildPasswordField(BuildContext context) {
    return CustomTextFormField(
      controller: passwordFieldController,
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
  Widget _buildRememberMeCheckbox(BuildContext context) {
    return CustomCheckboxButton(
      text: "Remember me",
      value: rememberMeCheckbox,
      padding: EdgeInsets.symmetric(vertical: 1.v),
      onChange: (value) {
        rememberMeCheckbox = value;
      },
    );
  }

  /// Section Widget
  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Login",
      buttonStyle: CustomButtonStyles.fillPrimary,
    );
  }

  /// Section Widget
  Widget _buildLoginWithGoogleButton(BuildContext context) {
    return CustomOutlinedButton(
      text: "Login with google",
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
