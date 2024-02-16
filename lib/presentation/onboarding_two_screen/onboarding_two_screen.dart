import 'package:flutter/material.dart';
import 'package:one_s_application1/core/app_export.dart';
import 'package:one_s_application1/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:one_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:one_s_application1/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingTwoScreen extends StatelessWidget {
  const OnboardingTwoScreen({Key? key})
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
            alignment: Alignment.topCenter,
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
                      SizedBox(height: 35.v),
                      Text(
                        "Track Pollution",
                        style: theme.textTheme.headlineMedium,
                      ),
                      SizedBox(height: 12.v),
                      Container(
                        width: 280.h,
                        margin: EdgeInsets.symmetric(horizontal: 47.h),
                        child: Text(
                          "Discover your personal exposure during your daily routine and take action to reduce it",
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
                height: 312.v,
                width: 375.h,
                alignment: Alignment.topCenter,
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
