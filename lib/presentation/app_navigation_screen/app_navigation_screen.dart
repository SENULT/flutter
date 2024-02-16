import 'package:flutter/material.dart';
import 'package:one_s_application1/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Signup One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signupOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Dashboard 1 Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.dashboard1TwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Dashboard 1 Four - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.dashboard1FourContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Dashboard 1 Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.dashboard1FiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Map 2 One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.map2OneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Map 2 Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.map2TwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Map 2 Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.map2ThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Location Details 1 One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.locationDetails1OneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Edit Locations 1 One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.editLocations1OneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Edit Locations 1 Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.editLocations1TwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Edit Locations 1 Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.editLocations1ThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "AQI Scale 1 One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aqiScale1OneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "AQI Notification",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aqiNotificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "AQI Notification One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aqiNotificationOneScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
