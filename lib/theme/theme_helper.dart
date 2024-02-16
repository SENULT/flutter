import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.gray50,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.h),
          ),
          shadowColor: colorScheme.onPrimary,
          elevation: 10,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.gray200,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: appTheme.whiteA700,
      ),
      dividerTheme: DividerThemeData(
        thickness: 34,
        space: 34,
        color: appTheme.whiteA700,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.gray900.withOpacity(0.54),
          fontSize: 16.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.gray900.withOpacity(0.72),
          fontSize: 14.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.black900.withOpacity(0.72),
          fontSize: 8.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w300,
        ),
        displayMedium: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 40.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 28.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: appTheme.black900.withOpacity(0.96),
          fontSize: 24.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: appTheme.black900.withOpacity(0.72),
          fontSize: 12.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: appTheme.black900.withOpacity(0.4),
          fontSize: 10.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 8.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w700,
        ),
        titleLarge: TextStyle(
          color: appTheme.black900.withOpacity(0.96),
          fontSize: 20.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: appTheme.black900.withOpacity(0.96),
          fontSize: 16.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: appTheme.black900.withOpacity(0.96),
          fontSize: 14.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF1882FF),
    primaryContainer: Color(0XFF19185E),
    secondaryContainer: Color(0XFF6B7280),

    // Error colors
    errorContainer: Color(0XFFFF3A2C),
    onError: Color(0XFFEB8B19),

    // On colors(text colors)
    onPrimary: Color(0X19111827),
    onPrimaryContainer: Color(0XFFFEB156),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF000000);

  // Blue
  Color get blue600 => Color(0XFF29A3D3);
  Color get blue700 => Color(0XFF245DD8);

  // BlueGray
  Color get blueGray100 => Color(0XFFD1D5DB);
  Color get blueGray300 => Color(0XFF9CA3AF);

  // Cyan
  Color get cyan500 => Color(0XFF13C1D4);

  // DeepOrange
  Color get deepOrange300 => Color(0XFFFE755C);
  Color get deepOrangeA200 => Color(0XFFFF6C3D);

  // Gray
  Color get gray200 => Color(0XFFE5E7EB);
  Color get gray50 => Color(0XFFFAFAFA);
  Color get gray700 => Color(0XFF5C5C5C);
  Color get gray900 => Color(0XFF1C1C1E);

  // Grayb
  Color get gray8005b => Color(0X5B3C3C43);

  // Green
  Color get green500 => Color(0XFF56BF30);
  Color get greenA400 => Color(0XFF02F982);
  Color get greenA40001 => Color(0XFF00CD85);
  Color get greenA700 => Color(0XFF00C853);
  Color get greenA70001 => Color(0XFF01DA5B);

  // Indigo
  Color get indigo60014 => Color(0X14525298);
  Color get indigo700 => Color(0XFF363B9D);
  Color get indigoA200 => Color(0XFF5D5FEF);

  // LightGreen
  Color get lightGreenA700 => Color(0XFF30B401);

  // Pink
  Color get pinkA700 => Color(0XFFCE0395);

  // Red
  Color get red500 => Color(0XFFEB4335);
  Color get redA700 => Color(0XFFFF0000);

  // White
  Color get whiteA700 => Color(0XFFFFFFFF);

  // Yellow
  Color get yellow600 => Color(0XFFFFDD2F);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();