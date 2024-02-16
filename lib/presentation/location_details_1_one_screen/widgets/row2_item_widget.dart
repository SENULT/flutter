import 'package:flutter/material.dart';
import 'package:one_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Row2ItemWidget extends StatelessWidget {
  const Row2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineBlack9001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: 48.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          CustomImageView(
            imagePath: ImageConstant.imgWeatherIcons,
            height: 32.adaptSize,
            width: 32.adaptSize,
          ),
          SizedBox(height: 1.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "15",
                style: CustomTextStyles.titleMediumRoboto,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 7.v),
                child: Text(
                  "°C".toUpperCase(),
                  style: CustomTextStyles.bodySmallRoboto,
                ),
              ),
            ],
          ),
          SizedBox(height: 2.v),
          Text(
            "08:00".toUpperCase(),
            style: CustomTextStyles.bodySmallRoboto,
          ),
        ],
      ),
    );
  }
}
