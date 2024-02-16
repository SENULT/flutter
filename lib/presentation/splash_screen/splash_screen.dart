import 'package:flutter/material.dart';
import 'package:one_s_application1/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 768.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup8,
                height: 768.v,
                width: 375.h,
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgAirqi,
                height: 64.v,
                width: 192.h,
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 330.v),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
