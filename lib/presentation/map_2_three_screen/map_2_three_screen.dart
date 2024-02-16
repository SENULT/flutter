import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:one_s_application1/core/app_export.dart';
import 'package:one_s_application1/widgets/custom_floating_button.dart';

class Map2ThreeScreen extends StatelessWidget {
  Map2ThreeScreen({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

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
                ImageConstant.imgMap2Three,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: SizedBox(
              height: 768.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 7.h,
                        vertical: 5.v,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgGroup169,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 29.v),
                          _buildMapSection(context),
                        ],
                      ),
                    ),
                  ),
                  _buildFloatingActionButtonSection(context),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: _buildFloatingActionButtonSection1(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildMapSection(BuildContext context) {
    return SizedBox(
      height: 729.v,
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
  Widget _buildFloatingActionButtonSection(BuildContext context) {
    return CustomFloatingButton(
      height: 48,
      width: 48,
      backgroundColor: appTheme.whiteA700,
      alignment: Alignment.bottomRight,
      child: CustomImageView(
        imagePath: ImageConstant.imgTrailingIconPrimary48x48,
        height: 24.0.v,
        width: 24.0.h,
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButtonSection1(BuildContext context) {
    return CustomFloatingButton(
      height: 48,
      width: 48,
      backgroundColor: appTheme.whiteA700,
      child: CustomImageView(
        imagePath: ImageConstant.imgSettingsBlack900,
        height: 24.0.v,
        width: 24.0.h,
      ),
    );
  }
}
