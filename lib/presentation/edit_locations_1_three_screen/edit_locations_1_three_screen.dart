import 'package:flutter/material.dart';
import 'package:one_s_application1/core/app_export.dart';
import 'package:one_s_application1/widgets/custom_elevated_button.dart';
import 'package:one_s_application1/widgets/custom_text_form_field.dart';

class EditLocations1ThreeScreen extends StatelessWidget {
  EditLocations1ThreeScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.gray50,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgEditLocations1,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 24.v),
                CustomImageView(
                  imagePath: ImageConstant.imgIconArrowLeft,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 32.h),
                ),
                Spacer(
                  flex: 39,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgMapsMarkerPinPrimary,
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                ),
                Spacer(
                  flex: 60,
                ),
                _buildLogin(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLogin(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.outlineOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextFormField(
            controller: inputController,
            hintText: "Church Street Square, Aston...",
            hintStyle: CustomTextStyles.titleMediumGray900SemiBold,
            textInputAction: TextInputAction.done,
            suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgGpsGray900,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 56.v,
            ),
            contentPadding: EdgeInsets.only(
              left: 16.h,
              top: 18.v,
              bottom: 18.v,
            ),
          ),
          SizedBox(height: 10.v),
          Text(
            "Enable GPS to set the location more accurate.",
            style: CustomTextStyles.bodyMediumGray900,
          ),
          SizedBox(height: 26.v),
          CustomElevatedButton(
            text: "Update",
            buttonStyle: CustomButtonStyles.fillPrimary,
          ),
          SizedBox(height: 18.v),
        ],
      ),
    );
  }
}
