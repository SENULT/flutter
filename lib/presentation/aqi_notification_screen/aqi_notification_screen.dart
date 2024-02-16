import 'package:flutter/material.dart';
import 'package:one_s_application1/core/app_export.dart';
import 'package:one_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:one_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:one_s_application1/widgets/custom_icon_button.dart';

class AqiNotificationScreen extends StatelessWidget {
  const AqiNotificationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(context),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup173,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: _buildAqiNotification(context),
          ),
        ),
        bottomNavigationBar: _buildThirtyEight(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 56.v,
      centerTitle: true,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgLocation,
      ),
    );
  }

  /// Section Widget
  Widget _buildAqiNotification(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5.v),
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "9",
                style: CustomTextStyles.sFProDisplayWhiteA700,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: SizedBox(
                  height: 98.v,
                  child: VerticalDivider(
                    width: 5.h,
                    thickness: 5.v,
                    indent: 32.h,
                    endIndent: 32.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "41",
                  style: CustomTextStyles.sFProDisplayWhiteA700,
                ),
              ),
            ],
          ),
          Text(
            "Monday, June 3",
            style: CustomTextStyles.titleLargeWhiteA700,
          ),
          SizedBox(height: 18.v),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.v),
            decoration: AppDecoration.fillWhiteA700.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 38.adaptSize,
                  width: 38.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 9.v),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgIcon,
                        height: 38.adaptSize,
                        width: 38.adaptSize,
                        radius: BorderRadius.circular(
                          19.h,
                        ),
                        alignment: Alignment.center,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgIcon13x10,
                        height: 13.v,
                        width: 10.h,
                        radius: BorderRadius.circular(
                          7.h,
                        ),
                        alignment: Alignment.bottomRight,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Grab an Umbrella!",
                      style: CustomTextStyles.titleSmallSFProTextBlack900,
                    ),
                    SizedBox(height: 2.v),
                    SizedBox(
                      width: 243.h,
                      child: Text(
                        "It Might Rain Today. You'd better take an umbrella. Hope you will not get wet.",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumSFProTextBlack90013_1
                            .copyWith(
                          height: 1.38,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 2.v,
                    bottom: 37.v,
                  ),
                  child: Text(
                    "4m ago",
                    style: CustomTextStyles.bodyMediumSFProTextBlack90013,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtyEight(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 44.h,
        right: 44.h,
        bottom: 50.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIconButton(
            height: 50.adaptSize,
            width: 50.adaptSize,
            padding: EdgeInsets.all(13.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgActionFlashlight,
            ),
          ),
          CustomIconButton(
            height: 50.adaptSize,
            width: 50.adaptSize,
            padding: EdgeInsets.all(11.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgActionCamera,
            ),
          ),
        ],
      ),
    );
  }
}
