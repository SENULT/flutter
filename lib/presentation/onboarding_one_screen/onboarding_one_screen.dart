import 'package:flutter/material.dart';
import 'package:one_s_application1/core/app_export.dart';
import 'package:one_s_application1/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:one_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:one_s_application1/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingOneScreen extends StatelessWidget {
  const OnboardingOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: SizedBox(
          height: 768.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 19.v),
                  decoration: AppDecoration.gradientWhiteAToWhiteA,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildAppBar(context),
                      Spacer(),
                      SizedBox(
                        height: 6.v,
                        child: AnimatedSmoothIndicator(
                          activeIndex: 0,
                          count: 3,
                          effect: ScrollingDotsEffect(
                            spacing: 4,
                            activeDotColor: theme.colorScheme.primary,
                            dotColor: appTheme.blueGray100,
                            dotHeight: 6.v,
                            dotWidth: 6.h,
                          ),
                        ),
                      ),
                      SizedBox(height: 36.v),
                      Text(
                        "Breath Better",
                        style: theme.textTheme.headlineMedium,
                      ),
                      SizedBox(height: 12.v),
                      Container(
                        width: 300.h,
                        margin: EdgeInsets.symmetric(horizontal: 37.h),
                        child: Text(
                          "Understand the air around you, wherever you go with the largest coverage of trusted data.",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyMedium!.copyWith(
                            height: 1.57,
                          ),
                        ),
                      ),
                      SizedBox(height: 29.v),
                      CustomElevatedButton(
                        text: "Get Started",
                        margin: EdgeInsets.symmetric(horizontal: 32.h),
                      ),
                      SizedBox(height: 76.v),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGroup,
                height: 312.adaptSize,
                width: 312.adaptSize,
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(top: 62.v),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      actions: [
        AppbarSubtitleTwo(
          text: "Skip",
          margin: EdgeInsets.symmetric(horizontal: 24.h),
        ),
      ],
    );
  }
}