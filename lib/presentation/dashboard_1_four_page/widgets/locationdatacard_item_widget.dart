import 'package:flutter/material.dart';
import 'package:one_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class LocationdatacardItemWidget extends StatelessWidget {
  const LocationdatacardItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: 163.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Text(
            "Work",
            style: CustomTextStyles.labelMediumBlack900,
          ),
          SizedBox(height: 2.v),
          Text(
            "Coventry ST, Birmingham",
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Row(
              children: [
                SizedBox(
                  width: 45.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgAqStatus,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.only(
                          top: 2.v,
                          bottom: 3.v,
                        ),
                      ),
                      Text(
                        "3",
                        style: CustomTextStyles.titleMediumBold,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 5.v,
                          bottom: 4.v,
                        ),
                        child: Text(
                          "AQI".toUpperCase(),
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgWeatherIcons,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(left: 16.h),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "25",
                    style: CustomTextStyles.titleMediumBold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 2.h,
                    top: 3.v,
                    bottom: 7.v,
                  ),
                  child: Text(
                    "°C".toUpperCase(),
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
