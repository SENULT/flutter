import 'package:flutter/material.dart';
import 'package:one_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class LivelocationItemWidget extends StatelessWidget {
  const LivelocationItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 4.h,
          bottom: 184.v,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "-",
                          style: CustomTextStyles.bodyMediumBlack900,
                        ),
                      ),
                      SizedBox(height: 1.v),
                      Text(
                        "-",
                        style: CustomTextStyles.bodySmall10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.v),
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgQrcode,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    top: 4.v,
                    bottom: 3.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Row(
                          children: [
                            Text(
                              "-",
                              style: CustomTextStyles.titleMediumRoboto,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 2.v,
                                bottom: 6.v,
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
                                top: 6.v,
                                bottom: 6.v,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "No information found",
                        style: CustomTextStyles.bodySmallBlack900,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 114.h,
                    top: 2.v,
                  ),
                  child: Text(
                    "-",
                    style: CustomTextStyles.headlineSmallMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 2.h,
                    top: 1.v,
                    bottom: 18.v,
                  ),
                  child: Text(
                    "AQI",
                    style: CustomTextStyles.bodySmallRoboto10,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgQrcode,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 12.h,
                    top: 4.v,
                    bottom: 3.v,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
