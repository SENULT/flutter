import 'package:flutter/material.dart';
import 'package:one_s_application1/presentation/splash_screen/splash_screen.dart';
import 'package:one_s_application1/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:one_s_application1/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:one_s_application1/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:one_s_application1/presentation/login_one_screen/login_one_screen.dart';
import 'package:one_s_application1/presentation/login_two_screen/login_two_screen.dart';
import 'package:one_s_application1/presentation/signup_one_screen/signup_one_screen.dart';
import 'package:one_s_application1/presentation/dashboard_1_two_screen/dashboard_1_two_screen.dart';
import 'package:one_s_application1/presentation/dashboard_1_four_container_screen/dashboard_1_four_container_screen.dart';
import 'package:one_s_application1/presentation/dashboard_1_five_screen/dashboard_1_five_screen.dart';
import 'package:one_s_application1/presentation/map_2_one_screen/map_2_one_screen.dart';
import 'package:one_s_application1/presentation/map_2_two_screen/map_2_two_screen.dart';
import 'package:one_s_application1/presentation/map_2_three_screen/map_2_three_screen.dart';
import 'package:one_s_application1/presentation/location_details_1_one_screen/location_details_1_one_screen.dart';
import 'package:one_s_application1/presentation/edit_locations_1_one_screen/edit_locations_1_one_screen.dart';
import 'package:one_s_application1/presentation/edit_locations_1_two_screen/edit_locations_1_two_screen.dart';
import 'package:one_s_application1/presentation/edit_locations_1_three_screen/edit_locations_1_three_screen.dart';
import 'package:one_s_application1/presentation/aqi_scale_1_one_screen/aqi_scale_1_one_screen.dart';
import 'package:one_s_application1/presentation/aqi_notification_screen/aqi_notification_screen.dart';
import 'package:one_s_application1/presentation/aqi_notification_one_screen/aqi_notification_one_screen.dart';
import 'package:one_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String loginOneScreen = '/login_one_screen';

  static const String loginTwoScreen = '/login_two_screen';

  static const String signupOneScreen = '/signup_one_screen';

  static const String dashboard1TwoScreen = '/dashboard_1_two_screen';

  static const String dashboard1FourPage = '/dashboard_1_four_page';

  static const String dashboard1FourContainerScreen =
      '/dashboard_1_four_container_screen';

  static const String dashboard1FiveScreen = '/dashboard_1_five_screen';

  static const String map2OneScreen = '/map_2_one_screen';

  static const String map2TwoScreen = '/map_2_two_screen';

  static const String map2ThreeScreen = '/map_2_three_screen';

  static const String locationDetails1OneScreen =
      '/location_details_1_one_screen';

  static const String editLocations1OneScreen = '/edit_locations_1_one_screen';

  static const String editLocations1TwoScreen = '/edit_locations_1_two_screen';

  static const String editLocations1ThreeScreen =
      '/edit_locations_1_three_screen';

  static const String aqiScale1OneScreen = '/aqi_scale_1_one_screen';

  static const String aqiNotificationScreen = '/aqi_notification_screen';

  static const String aqiNotificationOneScreen = '/aqi_notification_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    onboardingOneScreen: (context) => OnboardingOneScreen(),
    onboardingTwoScreen: (context) => OnboardingTwoScreen(),
    onboardingThreeScreen: (context) => OnboardingThreeScreen(),
    loginOneScreen: (context) => LoginOneScreen(),
    loginTwoScreen: (context) => LoginTwoScreen(),
    signupOneScreen: (context) => SignupOneScreen(),
    dashboard1TwoScreen: (context) => Dashboard1TwoScreen(),
    dashboard1FourContainerScreen: (context) => Dashboard1FourContainerScreen(),
    dashboard1FiveScreen: (context) => Dashboard1FiveScreen(),
    map2OneScreen: (context) => Map2OneScreen(),
    map2TwoScreen: (context) => Map2TwoScreen(),
    map2ThreeScreen: (context) => Map2ThreeScreen(),
    locationDetails1OneScreen: (context) => LocationDetails1OneScreen(),
    editLocations1OneScreen: (context) => EditLocations1OneScreen(),
    editLocations1TwoScreen: (context) => EditLocations1TwoScreen(),
    editLocations1ThreeScreen: (context) => EditLocations1ThreeScreen(),
    aqiScale1OneScreen: (context) => AqiScale1OneScreen(),
    aqiNotificationScreen: (context) => AqiNotificationScreen(),
    aqiNotificationOneScreen: (context) => AqiNotificationOneScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
