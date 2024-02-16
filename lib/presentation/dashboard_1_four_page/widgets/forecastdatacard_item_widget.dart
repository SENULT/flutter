import 'package:flutter/material.dart';
import 'package:one_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ForecastdatacardItemWidget extends StatelessWidget {
  const ForecastdatacardItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 8.h,
          vertical: 7.v,
        ),
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "18:00".toUpperCase(),
              style: CustomTextStyles.bodySmallRegular,
            ),
            SizedBox(height: 10.v),
            CustomImageView(
              imagePath: ImageConstant.imgUserGreenA400,
              height: 16.adaptSize,
              width: 16.adaptSize,
            ),
            SizedBox(height: 3.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "1",
                  style: theme.textTheme.titleSmall,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "AQI".toUpperCase(),
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.v),
            Container(
              height: 1.v,
              width: 32.h,
              decoration: BoxDecoration(
                color: appTheme.black900.withOpacity(0.08),
              ),
            ),
            SizedBox(height: 7.v),
            CustomImageView(
              imagePath: ImageConstant.imgWeatherIconsIndigoA200,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
            SizedBox(height: 1.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "20",
                  style: theme.textTheme.titleSmall,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 6.v),
                  child: Text(
                    "°C".toUpperCase(),
                    style: theme.textTheme.bodySmall,
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
