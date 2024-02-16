import '../map_2_one_screen/widgets/locationdatacard1_item_widget.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:one_s_application1/core/app_export.dart';
import 'package:one_s_application1/presentation/dashboard_1_four_page/dashboard_1_four_page.dart';
import 'package:one_s_application1/widgets/custom_bottom_bar.dart';
import 'package:one_s_application1/widgets/custom_floating_button.dart';

class Map2OneScreen extends StatelessWidget {
  Map2OneScreen({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.gray50,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup169,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 5.v),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 677.v,
                      width: 368.h,
                      margin: EdgeInsets.only(left: 7.h),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          _buildLocationDataCard(context),
                          _buildMap(context),
                          _buildFloatingActionButton(context),
                        ],
                      ),
                    ),
                    SizedBox(height: 23.v),
                    Container(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(left: 37.h),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          CustomImageView(
                            imagePath:
                                ImageConstant.imgMapsMarkerPinGreenA7000124x24,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(top: 6.v),
                              child: Text(
                                "25",
                                style: CustomTextStyles.labelSmallSemiBold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
        floatingActionButton: _buildFloatingActionButton1(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildLocationDataCard(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 677.v,
        child: ListView.separated(
          padding: EdgeInsets.only(
            left: 1.h,
            top: 556.v,
          ),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 1.h,
            );
          },
          itemCount: 4,
          itemBuilder: (context, index) {
            return Locationdatacard1ItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMap(BuildContext context) {
    return SizedBox(
      height: 568.v,
      width: 358.h,
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

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
      height: 48,
      width: 48,
      backgroundColor: appTheme.whiteA700,
      alignment: Alignment.bottomRight,
      child: CustomImageView(
        imagePath: ImageConstant.imgSettings,
        height: 24.0.v,
        width: 24.0.h,
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

  /// Section Widget
  Widget _buildFloatingActionButton1(BuildContext context) {
    return CustomFloatingButton(
      height: 48,
      width: 48,
      backgroundColor: appTheme.whiteA700,
      child: CustomImageView(
        imagePath: ImageConstant.imgTrailingIconBlack900,
        height: 24.0.v,
        width: 24.0.h,
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
