import '../widgets/row2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:one_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class WeathercomponentItemWidget extends StatelessWidget {
  const WeathercomponentItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16.v),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "Weather",
                  style: CustomTextStyles.titleLarge_1,
                ),
              ),
            ),
            SizedBox(height: 15.v),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Now".toUpperCase(),
                        style: CustomTextStyles.bodySmallRegular10,
                      ),
                      Text(
                        "Rain Shower",
                        style: CustomTextStyles.titleMedium_1,
                      ),
                      SizedBox(height: 3.v),
                      Text(
                        "Feels like 11°C",
                        style: CustomTextStyles.bodySmallRegular10_1,
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.v,
                      bottom: 9.v,
                    ),
                    child: Text(
                      "15",
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 19.v,
                      bottom: 17.v,
                    ),
                    child: Text(
                      "°C",
                      style: CustomTextStyles.bodySmallRegular10_1,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgWeatherIcons24x24,
                    height: 48.adaptSize,
                    width: 48.adaptSize,
                    margin: EdgeInsets.only(left: 4.h),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.v),
            SizedBox(
              height: 80.v,
              child: ListView.separated(
                padding: EdgeInsets.only(left: 16.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    width: 4.h,
                  );
                },
                itemCount: 11,
                itemBuilder: (context, index) {
                  return Row2ItemWidget();
                },
              ),
            ),
            SizedBox(height: 9.v),
          ],
        ),
      ),
    );
  }
}
