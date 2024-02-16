import '../dashboard_1_five_screen/widgets/aqcard_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:one_s_application1/core/app_export.dart';
import 'package:one_s_application1/presentation/dashboard_1_four_page/dashboard_1_four_page.dart';
import 'package:one_s_application1/widgets/custom_bottom_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Dashboard1FiveScreen extends StatelessWidget {
  Dashboard1FiveScreen({Key? key})
      : super(
          key: key,
        );

  int sliderIndex = 1;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 333.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 16.h,
                      right: 16.h,
                      bottom: 3.v,
                    ),
                    padding: EdgeInsets.symmetric(vertical: 37.v),
                    decoration: AppDecoration.fillWhiteA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildPageTitleAndVideo(context),
                        SizedBox(height: 14.v),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 83.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 64.h,
                              vertical: 3.v,
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: fs.Svg(
                                  ImageConstant.imgAirQualityInfo,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 32.v),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 6.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "3",
                                        style: theme.textTheme.headlineSmall,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 2.h,
                                          top: 6.v,
                                          bottom: 5.v,
                                        ),
                                        child: Text(
                                          "AQI",
                                          style: CustomTextStyles
                                              .bodySmallRoboto10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 7.v),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgUserGreenA70001,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                    ),
                                    Text(
                                      "Low",
                                      style: CustomTextStyles
                                          .titleSmallRobotoGreenA70001,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 24.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 32.h,
                            right: 45.h,
                          ),
                          child: Row(
                            children: [
                              Container(
                                decoration: AppDecoration.fillGreenA.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder4,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 30.v),
                                    Container(
                                      height: 20.v,
                                      width: 8.h,
                                      decoration: BoxDecoration(
                                        color: appTheme.greenA70001,
                                        borderRadius: BorderRadius.circular(
                                          4.h,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 6.v,
                                          bottom: 4.v,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "O3 (ug/m3)",
                                              style: CustomTextStyles
                                                  .bodySmallRegular10_1,
                                            ),
                                            SizedBox(height: 3.v),
                                            Text(
                                              "52",
                                              style: theme.textTheme.titleLarge,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 22.h),
                                        decoration:
                                            AppDecoration.fillGreenA.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            SizedBox(height: 30.v),
                                            Container(
                                              height: 20.v,
                                              width: 8.h,
                                              decoration: BoxDecoration(
                                                color: appTheme.greenA70001,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  4.h,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 16.h,
                                          top: 6.v,
                                          bottom: 4.v,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "PM10 (ug/m3)",
                                              style: CustomTextStyles
                                                  .bodySmallRegular10_1,
                                            ),
                                            SizedBox(height: 3.v),
                                            Text(
                                              "25",
                                              style: theme.textTheme.titleLarge,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 11.h),
                                        decoration:
                                            AppDecoration.fillGreenA.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            SizedBox(height: 30.v),
                                            Container(
                                              height: 20.v,
                                              width: 8.h,
                                              decoration: BoxDecoration(
                                                color: appTheme.greenA70001,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  4.h,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 16.h,
                                          top: 6.v,
                                          bottom: 4.v,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "NO (ug/m3)",
                                              style: CustomTextStyles
                                                  .bodySmallRegular10_1,
                                            ),
                                            SizedBox(height: 3.v),
                                            Text(
                                              "22",
                                              style: theme.textTheme.titleLarge,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 32.h,
                            right: 48.h,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 14.v),
                                decoration: AppDecoration.fillGreenA.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder4,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 30.v),
                                    Container(
                                      height: 20.v,
                                      width: 8.h,
                                      decoration: BoxDecoration(
                                        color: appTheme.greenA70001,
                                        borderRadius: BorderRadius.circular(
                                          4.h,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 16.h,
                                  top: 6.v,
                                  bottom: 18.v,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "NO2 (ug/m3)",
                                      style:
                                          CustomTextStyles.bodySmallRegular10_1,
                                    ),
                                    SizedBox(height: 3.v),
                                    Text(
                                      "12",
                                      style: theme.textTheme.titleLarge,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 15.h,
                                  bottom: 14.v,
                                ),
                                decoration: AppDecoration.fillGreenA.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder4,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 30.v),
                                    Container(
                                      height: 20.v,
                                      width: 8.h,
                                      decoration: BoxDecoration(
                                        color: appTheme.greenA70001,
                                        borderRadius: BorderRadius.circular(
                                          4.h,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 16.h,
                                  top: 6.v,
                                  bottom: 18.v,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "PM1 (ug/m3)",
                                      style:
                                          CustomTextStyles.bodySmallRegular10_1,
                                    ),
                                    SizedBox(height: 3.v),
                                    Text(
                                      "16",
                                      style: theme.textTheme.titleLarge,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 17.h),
                                decoration: AppDecoration.fillGreenA.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder4,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(height: 30.v),
                                    Container(
                                      height: 34.v,
                                      width: 8.h,
                                      decoration: BoxDecoration(
                                        color: appTheme.greenA70001,
                                        borderRadius: BorderRadius.circular(
                                          4.h,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 16.h,
                                  top: 5.v,
                                  bottom: 4.v,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 47.h,
                                      child: Text(
                                        "PM2.5 (ug/m3)",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .bodySmallRegular10_1
                                            .copyWith(
                                          height: 1.40,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 2.v),
                                    Text(
                                      "2.2",
                                      style: theme.textTheme.titleLarge,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15.v),
                        Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text(
                            "Forcast",
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        SizedBox(height: 7.v),
                        _buildAqCard(context),
                        SizedBox(height: 10.v),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 6.v,
                            child: AnimatedSmoothIndicator(
                              activeIndex: sliderIndex,
                              count: 11,
                              axisDirection: Axis.horizontal,
                              effect: ScrollingDotsEffect(
                                spacing: 4,
                                activeDotColor: theme.colorScheme.primary,
                                dotColor: appTheme.blueGray100,
                                dotHeight: 6.v,
                                dotWidth: 6.h,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildPageTitleAndVideo(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Text(
                "Air Quality",
                style: CustomTextStyles.titleLarge_1,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgVideocamera,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAqCard(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 72.v,
        initialPage: 0,
        autoPlay: true,
        viewportFraction: 1.0,
        enableInfiniteScroll: false,
        scrollDirection: Axis.horizontal,
        onPageChanged: (
          index,
          reason,
        ) {
          sliderIndex = index;
        },
      ),
      itemCount: 11,
      itemBuilder: (context, index, realIndex) {
        return AqcardItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Databank:
        return AppRoutes.dashboard1FourPage;
      case BottomBarEnum.Map:
        return "/";
      case BottomBarEnum.More:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.dashboard1FourPage:
        return Dashboard1FourPage();
      default:
        return DefaultWidget();
    }
  }
}
