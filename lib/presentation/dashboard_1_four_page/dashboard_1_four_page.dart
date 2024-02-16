import '../dashboard_1_four_page/widgets/forecastdatacard_item_widget.dart';
import '../dashboard_1_four_page/widgets/locationdatacard_item_widget.dart';
import '../dashboard_1_four_page/widgets/userprofile_item_widget.dart';
import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:one_s_application1/core/app_export.dart';
import 'package:one_s_application1/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:one_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:one_s_application1/widgets/custom_text_form_field.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class Dashboard1FourPage extends StatelessWidget {
  Dashboard1FourPage({Key? key})
      : super(
          key: key,
        );

  int sliderIndex = 1;

  int sliderIndex1 = 1;

  Completer<GoogleMapController> googleMapController = Completer();

  TextEditingController threeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 20.v),
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 36.h),
                      child: Row(
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
                                Text(
                                  "Church Street Square",
                                  style: CustomTextStyles.titleSmall_1,
                                ),
                                SizedBox(height: 1.v),
                                Text(
                                  "Birmingham",
                                  style: CustomTextStyles.bodySmall10,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 9.v),
                  _buildLiveData(context),
                  SizedBox(height: 15.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 32.h),
                      child: Text(
                        "Forcast",
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ),
                  SizedBox(height: 7.v),
                  _buildForecastDataCard(context),
                  SizedBox(height: 10.v),
                  SizedBox(
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
                  SizedBox(height: 34.v),
                  _buildLocationDataCard(context),
                  SizedBox(height: 16.v),
                  _buildUserProfile(context),
                  SizedBox(height: 10.v),
                  SizedBox(
                    height: 6.v,
                    child: AnimatedSmoothIndicator(
                      activeIndex: sliderIndex1,
                      count: 3,
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
                  SizedBox(height: 19.v),
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
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 19.h),
                    child: CustomTextFormField(
                      controller: threeController,
                      hintText: "Air Quality Index Range",
                      textInputAction: TextInputAction.done,
                      prefix: Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 15.v,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgVideocamera,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: 54.v,
                      ),
                      suffix: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 15.v, 12.h, 15.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgTrailingIconPrimary,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 54.v,
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 17.v),
                      borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 54.v,
      title: AppbarSubtitleOne(
        text: "Welcome Back 👋",
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildLiveData(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 32.h,
        right: 36.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgWeatherIcons,
            height: 32.adaptSize,
            width: 32.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "19",
                      style: CustomTextStyles.titleMediumRoboto,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 3.v,
                        bottom: 5.v,
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
                        top: 7.v,
                        bottom: 5.v,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.v),
                Container(
                  width: 114.h,
                  margin: EdgeInsets.only(left: 2.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Rain Shower",
                        style: CustomTextStyles.bodySmallBlack900,
                      ),
                      Text(
                        "Feels like 11°C",
                        style: CustomTextStyles.bodySmall10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              "3",
              style: CustomTextStyles.headlineSmallMedium,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 2.h,
              top: 11.v,
              bottom: 9.v,
            ),
            child: Text(
              "AQI",
              style: CustomTextStyles.bodySmallRoboto10,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUser,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 12.h,
              top: 5.v,
              bottom: 4.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildForecastDataCard(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 32.h),
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 130.v,
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
          return ForecastdatacardItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildLocationDataCard(BuildContext context) {
    return SizedBox(
      height: 86.v,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 16.h,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return LocationdatacardItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 88.v,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 1.0,
          enableInfiniteScroll: false,
          scrollDirection: Axis.horizontal,
          onPageChanged: (
            index,
            reason,
          ) {
            sliderIndex1 = index;
          },
        ),
        itemCount: 3,
        itemBuilder: (context, index, realIndex) {
          return UserprofileItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildMap(BuildContext context) {
    return SizedBox(
      height: 160.v,
      width: 343.h,
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
    );
  }
}
