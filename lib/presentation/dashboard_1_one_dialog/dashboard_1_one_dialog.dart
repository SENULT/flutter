import 'package:flutter/material.dart';
import 'package:one_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class Dashboard1OneDialog extends StatelessWidget {
  const Dashboard1OneDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270.h,
      decoration: AppDecoration.fillGray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 18.v),
          Text(
            "GPS Permission",
            style: CustomTextStyles.titleMediumGray900SemiBold,
          ),
          SizedBox(height: 4.v),
          Container(
            width: 218.h,
            margin: EdgeInsets.symmetric(horizontal: 25.h),
            child: Text(
              "We need to locate your location to serve you. Please accept the permission  to enjoy service.",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodySmallGray900.copyWith(
                height: 1.35,
              ),
            ),
          ),
          SizedBox(height: 14.v),
          Divider(
            color: appTheme.gray8005b,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 47.h,
              right: 38.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 13.v,
                    bottom: 9.v,
                  ),
                  child: Text(
                    "Deny",
                    style: CustomTextStyles.bodyLargeSFProTextGray900,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 44.v,
                      child: VerticalDivider(
                        width: 1.h,
                        thickness: 1.v,
                        color: appTheme.gray8005b,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 39.h,
                        top: 13.v,
                        bottom: 9.v,
                      ),
                      child: Text(
                        "Accept",
                        style: CustomTextStyles.titleMediumSFProTextPrimary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
