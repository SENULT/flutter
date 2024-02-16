import 'package:flutter/material.dart';
import 'package:one_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Locationdatacard2ItemWidget extends StatelessWidget {
  const Locationdatacard2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 184.h,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(bottom: 8.v),
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 13.v,
          ),
          decoration: AppDecoration.outlineBlack9001.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Edmund Street",
                        style: CustomTextStyles.bodySmallBlack900Regular,
                      ),
                      SizedBox(height: 3.v),
                      Text(
                        "Birmingham",
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgBookmark,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(
                      left: 60.h,
                      bottom: 12.v,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 9.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgUser,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    margin: EdgeInsets.only(
                      top: 3.v,
                      bottom: 4.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "16",
                      style: CustomTextStyles.titleMediumBold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      top: 3.v,
                      bottom: 4.v,
                    ),
                    child: Text(
                      "AQI".toUpperCase(),
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 53.h,
                      top: 1.v,
                      bottom: 1.v,
                    ),
                    child: Text(
                      "21",
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 1.v,
                      bottom: 8.v,
                    ),
                    child: Text(
                      "°C".toUpperCase(),
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgWeatherIcons24x24,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(
                      left: 4.h,
                      top: 1.v,
                      bottom: 2.v,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
