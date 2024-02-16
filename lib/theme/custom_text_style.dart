import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.96),
      );
  static get bodyLargeGray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray900.withOpacity(0.72),
      );
  static get bodyLargeSFProTextGray900 =>
      theme.textTheme.bodyLarge!.sFProText.copyWith(
        color: appTheme.gray900.withOpacity(0.72),
        fontSize: 17.fSize,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.96),
      );
  static get bodyMediumBlack900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.72),
      );
  static get bodyMediumBluegray300 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodyMediumDeeporange300 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.deepOrange300,
      );
  static get bodyMediumEpilogueGray900 =>
      theme.textTheme.bodyMedium!.epilogue.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumGray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodyMediumSFProTextBlack900 =>
      theme.textTheme.bodyMedium!.sFProText.copyWith(
        color: appTheme.black900.withOpacity(0.64),
        fontSize: 13.fSize,
      );
  static get bodyMediumSFProTextBlack90013 =>
      theme.textTheme.bodyMedium!.sFProText.copyWith(
        color: appTheme.black900.withOpacity(0.56),
        fontSize: 13.fSize,
      );
  static get bodyMediumSFProTextBlack90013_1 =>
      theme.textTheme.bodyMedium!.sFProText.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
      );
  static get bodyMediumff1882ff => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF1882FF),
      );
  static get bodyMediumff6b7280 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF6B7280),
      );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.96),
        fontSize: 10.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallBlack900Regular => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.96),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallBlack900Regular_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.4),
        fontWeight: FontWeight.w400,
      );
  static get bodySmallBlue700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blue700,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallGray900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray900.withOpacity(0.72),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallRegular => theme.textTheme.bodySmall!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodySmallRegular10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallRegular10_1 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallRegular10_2 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallRegular12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallRoboto => theme.textTheme.bodySmall!.roboto;
  static get bodySmallRoboto10 => theme.textTheme.bodySmall!.roboto.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallRobotoRegular =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        fontSize: 10.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallb7000000 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XB7000000),
        fontSize: 10.fSize,
      );
  // Headline text style
  static get headlineSmallMedium => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.96),
      );
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.96),
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumRobotob7000000 =>
      theme.textTheme.labelMedium!.roboto.copyWith(
        color: Color(0XB7000000),
        fontWeight: FontWeight.w700,
      );
  static get labelMediumWhiteA700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get labelSmallSemiBold => theme.textTheme.labelSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  // S text style
  static get sFProDisplayWhiteA700 => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 83.fSize,
        fontWeight: FontWeight.w200,
      ).sFProDisplay;
  // Title text style
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLarge_1 => theme.textTheme.titleLarge!;
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900.withOpacity(0.72),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray900SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get titleMediumOutfitPrimary =>
      theme.textTheme.titleMedium!.outfit.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumRoboto => theme.textTheme.titleMedium!.roboto;
  static get titleMediumSFProTextPrimary =>
      theme.textTheme.titleMedium!.sFProText.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get titleMedium_1 => theme.textTheme.titleMedium!;
  static get titleSmallBluegray300 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray300,
      );
  static get titleSmallGray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallRobotoGreenA70001 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.greenA70001,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallSFProTextBlack900 =>
      theme.textTheme.titleSmall!.sFProText.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmall_1 => theme.textTheme.titleSmall!;
  static get titleSmallff1882ff => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF1882FF),
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get outfit {
    return copyWith(
      fontFamily: 'Outfit',
    );
  }

  TextStyle get epilogue {
    return copyWith(
      fontFamily: 'Epilogue',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }
}
