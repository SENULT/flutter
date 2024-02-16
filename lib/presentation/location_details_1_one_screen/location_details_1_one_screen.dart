import '../location_details_1_one_screen/widgets/locationdetails_item_widget.dart';
import '../location_details_1_one_screen/widgets/pagetitle_item_widget.dart';
import '../location_details_1_one_screen/widgets/weathercomponent_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:one_s_application1/core/app_export.dart';
import 'package:one_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:one_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:one_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:one_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:one_s_application1/widgets/custom_drop_down.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LocationDetails1OneScreen extends StatelessWidget {
  LocationDetails1OneScreen({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  List<String> dropdownItemList1 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  int sliderIndex = 1;

  int sliderIndex1 = 1;

  List<String> dropdownItemList2 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  List<String> dropdownItemList3 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  int sliderIndex2 = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 24.v),
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  _buildLocationTitle(context),
                  SizedBox(height: 32.v),
                  _buildPageTitle(context),
                  SizedBox(height: 34.v),
                  _buildPageTitle1(context),
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
                  _buildAqForcast(context),
                  SizedBox(height: 16.v),
                  _buildAqHistory(context),
                  SizedBox(height: 16.v),
                  _buildWeatherForcast(context),
                  SizedBox(height: 18.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "Recommendations",
                        style: CustomTextStyles.bodyMediumBlack900_1,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.v),
                  _buildLocationDetails(context),
                  SizedBox(height: 10.v),
                  SizedBox(
                    height: 6.v,
                    child: AnimatedSmoothIndicator(
                      activeIndex: sliderIndex2,
                      count: 4,
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
      height: 64.v,
      leadingWidth: 56.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIconArrowLeft,
        margin: EdgeInsets.only(
          left: 32.h,
          top: 24.v,
          bottom: 16.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Current Location",
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgButton,
          margin: EdgeInsets.fromLTRB(24.h, 16.v, 24.h, 8.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildLocationTitle(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Text(
            "Church Street Square",
            style: CustomTextStyles.titleMediumSemiBold,
          ),
          SizedBox(height: 3.v),
          Text(
            "Birmingham",
            style: CustomTextStyles.bodySmallRegular12,
          ),
          SizedBox(height: 15.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 4.h),
                  child: CustomDropDown(
                    icon: Container(
                      margin: EdgeInsets.fromLTRB(11.h, 16.v, 16.h, 16.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowdown,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    hintText: "15/12/2020",
                    items: dropdownItemList,
                    onChanged: (value) {},
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: CustomDropDown(
                    icon: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowdown,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    hintText: "16:00",
                    items: dropdownItemList1,
                    onChanged: (value) {},
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPageTitle(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 408.v,
        width: 343.h,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 408.v,
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
              itemCount: 16,
              itemBuilder: (context, index, realIndex) {
                return PagetitleItemWidget();
              },
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 6.v,
                margin: EdgeInsets.only(left: 130.h),
                child: AnimatedSmoothIndicator(
                  activeIndex: sliderIndex,
                  count: 16,
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
    );
  }

  /// Section Widget
  Widget _buildPageTitle1(BuildContext context) {
    return SizedBox(
      height: 226.v,
      width: 343.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 226.v,
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
            itemCount: 1,
            itemBuilder: (context, index, realIndex) {
              return WeathercomponentItemWidget();
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 10.v,
              margin: EdgeInsets.only(bottom: 8.v),
              child: AnimatedSmoothIndicator(
                activeIndex: sliderIndex1,
                count: 1,
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 4.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildMapPinAqData(
                                context,
                                mapsMarkerPin:
                                    ImageConstant.imgMapsMarkerPinYellow600,
                                zero: "4",
                              ),
                              SizedBox(height: 16.v),
                              Padding(
                                padding: EdgeInsets.only(right: 2.h),
                                child: _buildMapPinAqData(
                                  context,
                                  mapsMarkerPin: ImageConstant
                                      .imgMapsMarkerPinLightGreenA700,
                                  zero: "3",
                                ),
                              ),
                              SizedBox(height: 6.v),
                              Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: _buildMapPinAqData(
                                  context,
                                  mapsMarkerPin:
                                      ImageConstant.imgMapsMarkerPinGreenA70001,
                                  zero: "2",
                                ),
                              ),
                              SizedBox(height: 26.v),
                              _buildMapPinAqData(
                                context,
                                mapsMarkerPin: ImageConstant.imgMapsMarkerPin,
                                zero: "1",
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 9.v),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 45.v,
                                    width: 41.h,
                                    margin: EdgeInsets.only(bottom: 2.v),
                                    child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        _buildMapPinAqData(
                                          context,
                                          mapsMarkerPin: ImageConstant
                                              .imgMapsMarkerPinOnerror,
                                          zero: "6",
                                        ),
                                        _buildMapPinAqData(
                                          context,
                                          mapsMarkerPin: ImageConstant
                                              .imgMapsMarkerPinOnprimarycontainer,
                                          zero: "5",
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 20.h,
                                      top: 10.v,
                                      bottom: 13.v,
                                    ),
                                    child: _buildMapPinAqData(
                                      context,
                                      mapsMarkerPin: ImageConstant
                                          .imgMapsMarkerPinDeepOrangeA200,
                                      zero: "7",
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 16.h,
                                      top: 23.v,
                                    ),
                                    child: _buildMapPinAqData(
                                      context,
                                      mapsMarkerPin:
                                          ImageConstant.imgMapsMarkerPinRedA700,
                                      zero: "8",
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 13.v),
                              SizedBox(
                                width: 164.h,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 12.v),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 19.h),
                                            child: _buildMapPinAqData(
                                              context,
                                              mapsMarkerPin: ImageConstant
                                                  .imgMapsMarkerPinLightGreenA700,
                                              zero: "3",
                                            ),
                                          ),
                                          SizedBox(height: 9.v),
                                          SizedBox(
                                            width: 71.h,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 10.v),
                                                  child: _buildMapPinAqData(
                                                    context,
                                                    mapsMarkerPin: ImageConstant
                                                        .imgMapsMarkerPinGreenA70001,
                                                    zero: "2",
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 10.v),
                                                  child: _buildMapPinAqData(
                                                    context,
                                                    mapsMarkerPin: ImageConstant
                                                        .imgMapsMarkerPin,
                                                    zero: "1",
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 22.v),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          _buildMapPinAqData(
                                            context,
                                            mapsMarkerPin: ImageConstant
                                                .imgMapsMarkerPinLightGreenA700,
                                            zero: "3",
                                          ),
                                          SizedBox(height: 6.v),
                                          Container(
                                            width: 78.h,
                                            margin: EdgeInsets.only(left: 4.h),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 3.v),
                                                  child: _buildMapPinAqData(
                                                    context,
                                                    mapsMarkerPin: ImageConstant
                                                        .imgMapsMarkerPin,
                                                    zero: "1",
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 3.v),
                                                  child: _buildMapPinAqData(
                                                    context,
                                                    mapsMarkerPin: ImageConstant
                                                        .imgMapsMarkerPinGreenA70001,
                                                    zero: "2",
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 17.h),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 6.v),
                                      child: _buildMapPinAqData(
                                        context,
                                        mapsMarkerPin: ImageConstant
                                            .imgMapsMarkerPinOnprimarycontainer,
                                        zero: "4",
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 20.h,
                                        top: 6.v,
                                      ),
                                      child: _buildMapPinAqData(
                                        context,
                                        mapsMarkerPin: ImageConstant
                                            .imgMapsMarkerPinLightGreenA700,
                                        zero: "3",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 5.v),
                              Padding(
                                padding: EdgeInsets.only(left: 37.h),
                                child: _buildMapPinAqData(
                                  context,
                                  mapsMarkerPin:
                                      ImageConstant.imgMapsMarkerPinGray700,
                                  zero: "n/a",
                                ),
                              ),
                              SizedBox(height: 15.v),
                              Container(
                                width: 94.h,
                                margin: EdgeInsets.only(right: 16.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 9.v),
                                      child: _buildMapPinAqData(
                                        context,
                                        mapsMarkerPin: ImageConstant
                                            .imgMapsMarkerPinLightGreenA700,
                                        zero: "3",
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 9.v),
                                      child: _buildMapPinAqData(
                                        context,
                                        mapsMarkerPin:
                                            ImageConstant.imgMapsMarkerPin,
                                        zero: "1",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 7.v),
                              _buildMapPinAqData(
                                context,
                                mapsMarkerPin:
                                    ImageConstant.imgMapsMarkerPinGreenA70001,
                                zero: "2",
                              ),
                            ],
                          ),
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
    );
  }

  /// Section Widget
  Widget _buildAqForcast(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "AQ Forcast",
                      style: CustomTextStyles.titleLarge_1,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "Next 7 days",
                      style: CustomTextStyles.bodySmallRegular10_1,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 7.v,
                    bottom: 8.v,
                  ),
                  child: CustomDropDown(
                    width: 61.h,
                    icon: Container(
                      margin: EdgeInsets.only(left: 8.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowdownPrimary,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    hintText: "AQI",
                    items: dropdownItemList2,
                    contentPadding: EdgeInsets.symmetric(vertical: 1.v),
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 3.h),
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Column(
              children: [
                SizedBox(height: 16.v),
                Container(
                  height: 1.v,
                  width: 280.h,
                  decoration: BoxDecoration(
                    color: appTheme.black900.withOpacity(0.08),
                  ),
                ),
                SizedBox(height: 16.v),
                SizedBox(
                  height: 95.v,
                  width: 280.h,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 1.v,
                          width: 280.h,
                          margin: EdgeInsets.only(top: 11.v),
                          decoration: BoxDecoration(
                            color: appTheme.black900.withOpacity(0.08),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 1.v,
                          width: 280.h,
                          margin: EdgeInsets.only(top: 39.v),
                          decoration: BoxDecoration(
                            color: appTheme.black900.withOpacity(0.08),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 1.v,
                          width: 280.h,
                          margin: EdgeInsets.only(bottom: 27.v),
                          decoration: BoxDecoration(
                            color: appTheme.black900.withOpacity(0.08),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgChart,
                        height: 80.v,
                        width: 280.h,
                        alignment: Alignment.bottomCenter,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5.h,
                          right: 5.h,
                          bottom: 5.v,
                        ),
                        child: _buildData(
                          context,
                          data1: "2",
                          data2: "5",
                          data3: "7",
                          data4: "4",
                          data5: "3",
                          data6: "8",
                          data7: "2",
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1.v,
                  width: 280.h,
                  decoration: BoxDecoration(
                    color: appTheme.black900.withOpacity(0.08),
                  ),
                ),
                SizedBox(height: 8.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    right: 13.h,
                  ),
                  child: _buildWeek(
                    context,
                    satText: "SAT",
                    sunText: "SUN",
                    monText: "MON",
                    tueText: "TUE",
                    wedText: "WED",
                    thuText: "THU",
                    friText: "FRI",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAqHistory(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "AQ History",
                      style: CustomTextStyles.titleLarge_1,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "Last 7 days",
                      style: CustomTextStyles.bodySmallRegular10_1,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 6.v,
                    bottom: 8.v,
                  ),
                  child: CustomDropDown(
                    width: 87.h,
                    icon: Container(
                      margin: EdgeInsets.only(left: 8.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowdownPrimary,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    hintText: "Weekly",
                    items: dropdownItemList3,
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 3.h),
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Column(
              children: [
                SizedBox(height: 16.v),
                Container(
                  height: 1.v,
                  width: 280.h,
                  decoration: BoxDecoration(
                    color: appTheme.black900.withOpacity(0.08),
                  ),
                ),
                SizedBox(height: 16.v),
                SizedBox(
                  height: 95.v,
                  width: 280.h,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 1.v,
                          width: 280.h,
                          margin: EdgeInsets.only(top: 11.v),
                          decoration: BoxDecoration(
                            color: appTheme.black900.withOpacity(0.08),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 1.v,
                          width: 280.h,
                          margin: EdgeInsets.only(top: 39.v),
                          decoration: BoxDecoration(
                            color: appTheme.black900.withOpacity(0.08),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 1.v,
                          width: 280.h,
                          margin: EdgeInsets.only(bottom: 27.v),
                          decoration: BoxDecoration(
                            color: appTheme.black900.withOpacity(0.08),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgChart,
                        height: 80.v,
                        width: 280.h,
                        alignment: Alignment.bottomCenter,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5.h,
                          right: 5.h,
                          bottom: 5.v,
                        ),
                        child: _buildData(
                          context,
                          data1: "2",
                          data2: "5",
                          data3: "7",
                          data4: "4",
                          data5: "3",
                          data6: "8",
                          data7: "2",
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1.v,
                  width: 280.h,
                  decoration: BoxDecoration(
                    color: appTheme.black900.withOpacity(0.08),
                  ),
                ),
                SizedBox(height: 8.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    right: 13.h,
                  ),
                  child: _buildWeek(
                    context,
                    satText: "SAT",
                    sunText: "SUN",
                    monText: "MON",
                    tueText: "TUE",
                    wedText: "WED",
                    thuText: "THU",
                    friText: "FRI",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWeatherForcast(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Weather Forcast",
            style: CustomTextStyles.titleLarge_1,
          ),
          SizedBox(height: 4.v),
          Text(
            "Next 7 days",
            style: CustomTextStyles.bodySmallRegular10_1,
          ),
          SizedBox(height: 15.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 6.v,
            ),
            decoration: AppDecoration.outlineBlack9001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "thu 11 NOV 21".toUpperCase(),
                      style: CustomTextStyles.labelLargeBlack900,
                    ),
                    SizedBox(height: 1.v),
                    Text(
                      "today".toUpperCase(),
                      style: CustomTextStyles.bodySmallBlack900Regular_1,
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "25",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.v),
                  child: Text(
                    "°C".toUpperCase(),
                    style: CustomTextStyles.bodySmallRegular,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgTemparatureHigh,
                  height: 6.v,
                  width: 4.h,
                  margin: EdgeInsets.only(
                    left: 4.h,
                    top: 10.v,
                    bottom: 10.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 4.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "20",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.v),
                  child: Text(
                    "°C".toUpperCase(),
                    style: CustomTextStyles.bodySmallRegular,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgTemparatureLow,
                  height: 6.v,
                  width: 4.h,
                  margin: EdgeInsets.only(
                    left: 4.h,
                    top: 10.v,
                    bottom: 10.v,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgWeatherIcons,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 8.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 6.v,
            ),
            decoration: AppDecoration.outlineBlack9001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Fri 12 NOV 21".toUpperCase(),
                      style: CustomTextStyles.labelLargeBlack900,
                    ),
                    SizedBox(height: 1.v),
                    Text(
                      "Tomorrow".toUpperCase(),
                      style: CustomTextStyles.bodySmallBlack900Regular_1,
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "25",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.v),
                  child: Text(
                    "°C".toUpperCase(),
                    style: CustomTextStyles.bodySmallRegular,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgTemparatureHigh,
                  height: 6.v,
                  width: 4.h,
                  margin: EdgeInsets.only(
                    left: 4.h,
                    top: 10.v,
                    bottom: 10.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 4.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "20",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.v),
                  child: Text(
                    "°C".toUpperCase(),
                    style: CustomTextStyles.bodySmallRegular,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgTemparatureLow,
                  height: 6.v,
                  width: 4.h,
                  margin: EdgeInsets.only(
                    left: 4.h,
                    top: 10.v,
                    bottom: 10.v,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgWeatherIcons24x24,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 8.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.v),
          _buildWeatherCard3(
            context,
            weather: "Sat 13 NOV 21",
            weather1: "25",
            weather2: "°C",
            weather3: "20",
            weather4: "°C",
            weatherIcon: ImageConstant.imgWeatherIcons1,
          ),
          SizedBox(height: 4.v),
          _buildWeatherCard3(
            context,
            weather: "Sat 14 NOV 21",
            weather1: "25",
            weather2: "°C",
            weather3: "20",
            weather4: "°C",
            weatherIcon: ImageConstant.imgWeatherIconsIndigoA200,
          ),
          SizedBox(height: 4.v),
          _buildWeatherCard3(
            context,
            weather: "Sat 15 NOV 21",
            weather1: "25",
            weather2: "°C",
            weather3: "20",
            weather4: "°C",
            weatherIcon: ImageConstant.imgWeatherIcons2,
          ),
          SizedBox(height: 4.v),
          _buildWeatherCard3(
            context,
            weather: "Sat 16 NOV 21",
            weather1: "25",
            weather2: "°C",
            weather3: "20",
            weather4: "°C",
            weatherIcon: ImageConstant.imgWeatherIcons3,
          ),
          SizedBox(height: 4.v),
          _buildWeatherCard3(
            context,
            weather: "Sat 17 NOV 21",
            weather1: "25",
            weather2: "°C",
            weather3: "20",
            weather4: "°C",
            weatherIcon: ImageConstant.imgWeatherIcons4,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLocationDetails(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 87.v,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 1.0,
          enableInfiniteScroll: false,
          scrollDirection: Axis.horizontal,
          onPageChanged: (
            index,
            reason,
          ) {
            sliderIndex2 = index;
          },
        ),
        itemCount: 4,
        itemBuilder: (context, index, realIndex) {
          return LocationdetailsItemWidget();
        },
      ),
    );
  }

  /// Common widget
  Widget _buildMapPinAqData(
    BuildContext context, {
    required String mapsMarkerPin,
    required String zero,
  }) {
    return SizedBox(
      height: 24.adaptSize,
      width: 24.adaptSize,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: mapsMarkerPin,
            height: 24.adaptSize,
            width: 24.adaptSize,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 6.v),
              child: Text(
                zero,
                style: theme.textTheme.labelSmall!.copyWith(
                  color: appTheme.whiteA700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildData(
    BuildContext context, {
    required String data1,
    required String data2,
    required String data3,
    required String data4,
    required String data5,
    required String data6,
    required String data7,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 60.v,
            right: 5.h,
          ),
          padding: EdgeInsets.all(1.h),
          decoration: AppDecoration.fillGreenA70001.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 7.v,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 1.v),
                Text(
                  data1,
                  style: CustomTextStyles.labelMediumWhiteA700.copyWith(
                    color: appTheme.whiteA700,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 5.h,
            vertical: 30.v,
          ),
          padding: EdgeInsets.all(1.h),
          decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 7.v,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Text(
              data2,
              style: CustomTextStyles.labelMediumWhiteA700.copyWith(
                color: appTheme.whiteA700,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(5.h, 12.v, 5.h, 48.v),
          padding: EdgeInsets.all(1.h),
          decoration: AppDecoration.fillDeepOrangeA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 7.v,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 1.v),
                Text(
                  data3,
                  style: CustomTextStyles.labelMediumWhiteA700.copyWith(
                    color: appTheme.whiteA700,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(5.h, 40.v, 5.h, 20.v),
          padding: EdgeInsets.all(1.h),
          decoration: AppDecoration.fillYellow.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 7.v,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 1.v),
                Text(
                  data4,
                  style: CustomTextStyles.labelMediumWhiteA700.copyWith(
                    color: appTheme.whiteA700,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(5.h, 50.v, 5.h, 10.v),
          padding: EdgeInsets.all(1.h),
          decoration: AppDecoration.fillGreenA70001.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 7.v,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 1.v),
                Text(
                  data5,
                  style: CustomTextStyles.labelMediumWhiteA700.copyWith(
                    color: appTheme.whiteA700,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 5.h,
            right: 5.h,
            bottom: 60.v,
          ),
          padding: EdgeInsets.all(1.h),
          decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 7.v,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 1.v),
                Text(
                  data6,
                  style: CustomTextStyles.labelMediumWhiteA700.copyWith(
                    color: appTheme.whiteA700,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 5.h,
            top: 60.v,
          ),
          padding: EdgeInsets.all(1.h),
          decoration: AppDecoration.fillGreenA70001.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 7.v,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 1.v),
                Text(
                  data7,
                  style: CustomTextStyles.labelMediumWhiteA700.copyWith(
                    color: appTheme.whiteA700,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildWeek(
    BuildContext context, {
    required String satText,
    required String sunText,
    required String monText,
    required String tueText,
    required String wedText,
    required String thuText,
    required String friText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          satText,
          style: theme.textTheme.labelMedium!.copyWith(
            color: appTheme.black900.withOpacity(0.4),
          ),
        ),
        Text(
          sunText,
          style: theme.textTheme.labelMedium!.copyWith(
            color: appTheme.black900.withOpacity(0.4),
          ),
        ),
        Text(
          monText,
          style: theme.textTheme.labelMedium!.copyWith(
            color: appTheme.black900.withOpacity(0.4),
          ),
        ),
        Text(
          tueText,
          style: theme.textTheme.labelMedium!.copyWith(
            color: appTheme.black900.withOpacity(0.4),
          ),
        ),
        Text(
          wedText,
          style: theme.textTheme.labelMedium!.copyWith(
            color: appTheme.black900.withOpacity(0.4),
          ),
        ),
        Text(
          thuText,
          style: theme.textTheme.labelMedium!.copyWith(
            color: appTheme.black900.withOpacity(0.4),
          ),
        ),
        Text(
          friText,
          style: theme.textTheme.labelMedium!.copyWith(
            color: appTheme.black900.withOpacity(0.4),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildWeatherCard3(
    BuildContext context, {
    required String weather,
    required String weather1,
    required String weather2,
    required String weather3,
    required String weather4,
    required String weatherIcon,
  }) {
    return Container(
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.outlineBlack9001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 4.v,
            ),
            child: Text(
              weather,
              style: CustomTextStyles.labelLargeBlack900.copyWith(
                color: appTheme.black900.withOpacity(0.96),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 1.v,
            ),
            child: Text(
              weather1,
              style: theme.textTheme.titleMedium!.copyWith(
                color: appTheme.black900.withOpacity(0.96),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 7.v,
              bottom: 6.v,
            ),
            child: Text(
              weather2,
              style: CustomTextStyles.bodySmallRegular.copyWith(
                color: appTheme.black900.withOpacity(0.72),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgTemparatureHigh,
            height: 6.v,
            width: 4.h,
            margin: EdgeInsets.only(
              left: 4.h,
              top: 9.v,
              bottom: 9.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 2.v,
              bottom: 1.v,
            ),
            child: Text(
              weather3,
              style: theme.textTheme.titleMedium!.copyWith(
                color: appTheme.black900.withOpacity(0.96),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 7.v,
              bottom: 6.v,
            ),
            child: Text(
              weather4,
              style: CustomTextStyles.bodySmallRegular.copyWith(
                color: appTheme.black900.withOpacity(0.72),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgTemparatureLow,
            height: 6.v,
            width: 4.h,
            margin: EdgeInsets.only(
              left: 4.h,
              top: 9.v,
              bottom: 9.v,
            ),
          ),
          CustomImageView(
            imagePath: weatherIcon,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(left: 8.h),
          ),
        ],
      ),
    );
  }
}
