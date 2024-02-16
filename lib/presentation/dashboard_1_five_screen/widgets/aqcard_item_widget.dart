import 'package:flutter/material.dart';
import 'package:one_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class AqcardItemWidget extends StatelessWidget {
  const AqcardItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 5.v,
        ),
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 1.v),
            Text(
              "17:00".toUpperCase(),
              style: CustomTextStyles.bodySmallRegular,
            ),
            SizedBox(height: 6.v),
            CustomImageView(
              imagePath: ImageConstant.imgUser,
              height: 16.adaptSize,
              width: 16.adaptSize,
            ),
            SizedBox(height: 6.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "3",
                  style: theme.textTheme.titleMedium,
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
          ],
        ),
      ),
    );
  }
}
