import 'package:flutter/material.dart';
import 'package:bobo_cantik/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange10002,
      );
  static BoxDecoration get fillDeeporange10001 => BoxDecoration(
        color: appTheme.deepOrange10001,
      );
  static BoxDecoration get fillDeeporange50 => BoxDecoration(
        color: appTheme.deepOrange50,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray40001,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red20001,
      );

  // Gradient decorations
  static BoxDecoration get gradientBlueGrayToOnSecondaryContainer =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.blueGray10000,
            theme.colorScheme.onSecondaryContainer.withOpacity(0.2),
            theme.colorScheme.onSecondaryContainer.withOpacity(0.6),
          ],
        ),
      );
  static BoxDecoration get gradientRedToDeepOrange => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.red100,
            appTheme.deepOrange50,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get outlineOnSecondaryContainer => BoxDecoration();
  static BoxDecoration get outlineOnSecondaryContainer1 => BoxDecoration(
        color: appTheme.deepOrange50,
        border: Border.all(
          color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimaryContainer => BoxDecoration();
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder2 => BorderRadius.circular(
        2.h,
      );
  static BorderRadius get circleBorder23 => BorderRadius.circular(
        23.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder35 => BorderRadius.circular(
        35.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
