import 'package:flutter/material.dart';
import 'package:one_s_application1/core/app_export.dart';
import 'package:one_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:one_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:one_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:one_s_application1/widgets/custom_icon_button.dart';

class AqiScale1OneScreen extends StatelessWidget {
  const AqiScale1OneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 23.v),
            child: Container(
              margin: EdgeInsets.only(bottom: 5.v),
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Column(
                children: [
                  _buildCurrentStateCard(context),
                  SizedBox(height: 8.v),
                  Container(
                    width: 343.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 17.h,
                      vertical: 18.v,
                    ),
                    decoration: AppDecoration.fillWhiteA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: _buildAqiDataRow(
                            context,
                            user: ImageConstant.imgUser,
                            low: "Low",
                            airQualityIndex: "Air Quality Index: 1 to 3",
                            description:
                                "Air quality can change quickly due to both weather and human activity. Air quality forecasts are often adjusted based on weather patterns. But pollution from human activity can drastically affect air quality forecasts within hours or even minutes. ... Show More",
                            pageTitle: "Show More",
                          ),
                        ),
                        SizedBox(height: 26.v),
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: _buildAqiDataRow(
                            context,
                            user: ImageConstant.imgUserOnerror,
                            low: "Moderate",
                            airQualityIndex: "Air Quality Index: 4 to 6",
                            description:
                                "Air quality can change quickly due to both weather and human activity. Air quality forecasts are often adjusted based on weather patterns. But pollution from human activity can drastically...",
                            pageTitle: "Show More",
                          ),
                        ),
                        SizedBox(height: 28.v),
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: _buildAqiDataRow(
                            context,
                            user: ImageConstant.imgAqStatusRedA700,
                            low: "High",
                            airQualityIndex: "Air Quality Index: 7 to 8",
                            description:
                                "Air quality can change quickly due to both weather and human activity. Air quality forecasts are often adjusted based on weather patterns. But pollution from human activity can drastically...",
                            pageTitle: "Show More",
                          ),
                        ),
                        SizedBox(height: 28.v),
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: _buildAqiDataRow(
                            context,
                            user: ImageConstant.imgLock,
                            low: "Very High",
                            airQualityIndex: "Air Quality Index: 9 to 10",
                            description:
                                "Air quality can change quickly due to both weather and human activity. Air quality forecasts are often adjusted based on weather patterns. But pollution from human activity can drastically...",
                            pageTitle: "Show More",
                          ),
                        ),
                        SizedBox(height: 6.v),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 64.v,
      leadingWidth: 56.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIconArrowLeft,
        margin: EdgeInsets.only(
          left: 32.h,
          top: 15.v,
          bottom: 16.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "AQI Scale",
      ),
    );
  }

  /// Section Widget
  Widget _buildCurrentStateCard(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineBlack9001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGps,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    top: 1.v,
                    bottom: 5.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Church Street Square",
                        style: CustomTextStyles.titleSmall_1,
                      ),
                      SizedBox(height: 1.v),
                      Text(
                        "Birmingham",
                        style: CustomTextStyles.bodySmall10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgWeatherIcons,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "19",
                            style: CustomTextStyles.titleMediumRoboto,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 3.v,
                              bottom: 5.v,
                            ),
                            child: Text(
                              "°C".toUpperCase(),
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgTemparatureHigh,
                            height: 6.v,
                            width: 4.h,
                            margin: EdgeInsets.only(
                              left: 2.h,
                              top: 7.v,
                              bottom: 5.v,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 1.v),
                      Container(
                        width: 114.h,
                        margin: EdgeInsets.only(left: 2.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Rain Shower",
                              style: CustomTextStyles.bodySmallBlack900,
                            ),
                            Text(
                              "Feels like 11°C",
                              style: CustomTextStyles.bodySmall10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Text(
                    "3",
                    style: CustomTextStyles.headlineSmallMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 2.h,
                    top: 11.v,
                    bottom: 9.v,
                  ),
                  child: Text(
                    "AQI",
                    style: CustomTextStyles.bodySmallRoboto10,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 5.v,
                    bottom: 4.v,
                  ),
                  child: CustomIconButton(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    padding: EdgeInsets.all(1.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgUserLightGreenA700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildAqiDataRow(
    BuildContext context, {
    required String user,
    required String low,
    required String airQualityIndex,
    required String description,
    required String pageTitle,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: user,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            top: 5.v,
            bottom: 83.v,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  low,
                  style: CustomTextStyles.titleMediumOnPrimary.copyWith(
                    color: theme.colorScheme.onPrimary.withOpacity(1),
                  ),
                ),
                SizedBox(height: 6.v),
                Text(
                  airQualityIndex,
                  style: CustomTextStyles.bodySmallGray900.copyWith(
                    color: appTheme.gray900.withOpacity(0.72),
                  ),
                ),
                SizedBox(height: 9.v),
                SizedBox(
                  width: 261.h,
                  child: Text(
                    description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmall10.copyWith(
                      color: appTheme.black900.withOpacity(0.72),
                      height: 1.40,
                    ),
                  ),
                ),
                SizedBox(height: 7.v),
                Text(
                  pageTitle,
                  style: CustomTextStyles.labelMediumPrimary.copyWith(
                    color: theme.colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
