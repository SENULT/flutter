import '../dashboard_1_two_screen/widgets/livelocation_item_widget.dart';
import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:one_s_application1/core/app_export.dart';
import 'package:one_s_application1/presentation/dashboard_1_four_page/dashboard_1_four_page.dart';
import 'package:one_s_application1/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:one_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:one_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:one_s_application1/widgets/custom_bottom_bar.dart';
import 'package:one_s_application1/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Dashboard1TwoScreen extends StatelessWidget {
  Dashboard1TwoScreen({Key? key})
      : super(
          key: key,
        );

  int sliderIndex = 1;

  Completer<GoogleMapController> googleMapController = Completer();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 40.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildLiveLocation(context),
                      SizedBox(height: 34.v),
                      _buildAddPlace(context),
                      SizedBox(height: 17.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text(
                            "Show on Map",
                            style: CustomTextStyles.bodySmallRobotoRegular,
                          ),
                        ),
                      ),
                      SizedBox(height: 8.v),
                      _buildMap(context),
                      SizedBox(height: 16.v),
                      _buildDashboard1Two(context),
                    ],
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 90.v,
      title: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Column(
          children: [
            AppbarSubtitleOne(
              text: "Welcome 👋",
              margin: EdgeInsets.only(right: 1.h),
            ),
            SizedBox(height: 5.v),
            AppbarTitle(
              text: "User",
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLiveLocation(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 257.v,
        width: 360.h,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 257.v,
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
              itemCount: 3,
              itemBuilder: (context, index, realIndex) {
                return LivelocationItemWidget();
              },
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 6.v,
                margin: EdgeInsets.only(left: 130.h),
                child: AnimatedSmoothIndicator(
                  activeIndex: sliderIndex,
                  count: 3,
                  axisDirection: Axis.horizontal,
                  effect: ScrollingDotsEffect(
                    spacing: 4,
                    activeDotColor: theme.colorScheme.primary.withOpacity(0.16),
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
    );
  }

  /// Section Widget
  Widget _buildAddPlace(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildLocation(
            context,
            pageTitle: "Work",
            pageTitle1: "Coventry ST, Birmingham",
            pageTitle2: "-",
            weather: "AQI",
            pageTitle3: "-",
            weather1: "°C",
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: _buildLocation(
              context,
              pageTitle: "Home",
              pageTitle1: "Coventry ST, Birmingham",
              pageTitle2: "-",
              weather: "AQI",
              pageTitle3: "-",
              weather1: "°C",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMap(BuildContext context) {
    return Container(
      height: 160.v,
      width: 343.h,
      decoration: AppDecoration.outlineBlack900,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMap,
            height: 160.v,
            width: 343.h,
            radius: BorderRadius.circular(
              8.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 160.v,
              width: 343.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Opacity(
                    opacity: 0.6,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgMap160x343,
                      height: 160.v,
                      width: 343.h,
                      radius: BorderRadius.circular(
                        8.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 148.v,
                      width: 324.h,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: SizedBox(
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgMapsMarkerPin,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 6.v),
                                      child: Text(
                                        "1",
                                        style: theme.textTheme.labelSmall,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath:
                                ImageConstant.imgMapsMarkerPinGreenA70001,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(bottom: 2.v),
                          ),
                          SizedBox(
                            height: 138.v,
                            width: 312.h,
                            child: GoogleMap(
                              //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
                              mapType: MapType.normal,
                              initialCameraPosition: CameraPosition(
                                target: LatLng(
                                  37.43296265331129,
                                  -122.08832357078792,
                                ),
                                zoom: 14.4746,
                              ),
                              onMapCreated: (GoogleMapController controller) {
                                googleMapController.complete(controller);
                              },
                              zoomControlsEnabled: false,
                              zoomGesturesEnabled: false,
                              myLocationButtonEnabled: false,
                              myLocationEnabled: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDashboard1Two(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 19.h),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineBlack9001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgTrailingIcon,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(left: 4.h),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 3.v,
            ),
            child: Text(
              "Air Quality Index Range",
              style: CustomTextStyles.bodyLargeBlack900,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgTrailingIconPrimary,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ],
      ),
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

  /// Common widget
  Widget _buildLocation(
    BuildContext context, {
    required String pageTitle,
    required String pageTitle1,
    required String pageTitle2,
    required String weather,
    required String pageTitle3,
    required String weather1,
  }) {
    return Container(
      width: 163.h,
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pageTitle,
                  style: CustomTextStyles.labelMediumBlack900.copyWith(
                    color: appTheme.black900.withOpacity(0.96),
                  ),
                ),
                SizedBox(height: 2.v),
                Text(
                  pageTitle1,
                  style: theme.textTheme.bodySmall!.copyWith(
                    color: appTheme.black900.withOpacity(0.72),
                  ),
                ),
                SizedBox(height: 8.v),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pageTitle2,
                      style: CustomTextStyles.titleMediumBold.copyWith(
                        color: appTheme.black900.withOpacity(0.96),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 2.h,
                        top: 4.v,
                        bottom: 5.v,
                      ),
                      child: Text(
                        weather,
                        style: theme.textTheme.bodySmall!.copyWith(
                          color: appTheme.black900.withOpacity(0.72),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        pageTitle3,
                        style: CustomTextStyles.titleMediumBold.copyWith(
                          color: appTheme.black900.withOpacity(0.96),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 2.h,
                        bottom: 8.v,
                      ),
                      child: Text(
                        weather1,
                        style: theme.textTheme.bodySmall!.copyWith(
                          color: appTheme.black900.withOpacity(0.72),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              right: 2.h,
              bottom: 33.v,
            ),
            child: CustomIconButton(
              height: 20.adaptSize,
              width: 20.adaptSize,
              padding: EdgeInsets.all(1.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgIconPlus,
              ),
            ),
          ),
        ],
      ),
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
