import 'package:ahmerportfolio/constants/constant.dart';
import 'package:flutter/material.dart';

class DarkTheme {
  TextTheme textTheme = TextTheme(
    titleLarge: TextStyle(
      fontFamily: AppConstants.kFontConstant,
      fontSize: 32.0,
      color: Colors.white,
    ),
    titleMedium: TextStyle(
      fontFamily: AppConstants.kFontConstant,
      fontSize: 28.0,
      color: Colors.white,
    ),
    titleSmall: TextStyle(
      fontFamily: AppConstants.kFontConstant,
      fontSize: 24.0,
      color: Colors.white,
    ),
    headlineLarge: TextStyle(
      fontFamily: AppConstants.kFontConstant,
      fontSize: 28.0,
      color: Colors.white,
    ),
    headlineMedium: TextStyle(
      fontFamily: AppConstants.kFontConstant,
      fontSize: 26.0,
      color: Colors.white,
    ),
    headlineSmall: TextStyle(
      fontFamily: AppConstants.kFontConstant,
      fontSize: 22.0,
      color: Colors.white,
    ),

    bodyLarge: TextStyle(
      fontFamily: AppConstants.kFontConstant,
      fontSize: 16.0,
      color: Colors.white,
    ),
    bodyMedium: TextStyle(
      fontFamily: AppConstants.kFontConstant,
      fontSize: 14.0,
      color: Colors.white,
    ),
    bodySmall: TextStyle(
      fontFamily: AppConstants.kFontConstant,
      fontSize: 16.0,
      color: Colors.white,
    ),

    labelLarge: TextStyle(
      fontFamily: AppConstants.kFontConstant,
      fontSize: 14.0,
      color: Colors.white,
    ),
    labelMedium: TextStyle(
      fontFamily: AppConstants.kFontConstant,
      fontSize: 12.0,
      color: Colors.white,
    ),
    labelSmall: TextStyle(
      fontFamily: AppConstants.kFontConstant,
      fontSize: 12.0,
      color: Colors.white,
    ),
  );
}

extension BuildContextUtils on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  // label
  TextStyle? get labelSmall => textTheme.labelSmall?.copyWith(
    fontFamily: AppConstants.kFontConstant,
    fontWeight: FontWeight.w500,
    fontSize: 11,
    // color: Colors.black,
  );

  TextStyle? get labelMedium => textTheme.labelMedium?.copyWith(
    fontFamily: AppConstants.kFontConstant,
    fontWeight: FontWeight.w500,
    fontSize: 12,
    // color: Colors.black,
  );

  TextStyle? get labelLarge => textTheme.labelLarge?.copyWith(
    fontFamily: AppConstants.kFontConstant,
    fontWeight: FontWeight.w600,
    fontSize: 14,
    // color: Colors.black,
  );

  // body
  TextStyle? get bodySmall => textTheme.bodySmall?.copyWith(
    fontFamily: AppConstants.kFontConstant,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    // color: Colors.black,
  );

  TextStyle? get bodyMedium => textTheme.bodyMedium?.copyWith(
    fontFamily: AppConstants.kFontConstant,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    // color: Colors.black,
  );

  TextStyle? get bodyLarge => textTheme.bodyLarge?.copyWith(
    fontFamily: AppConstants.kFontConstant,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: Colors.black,
  );

  // title
  TextStyle? get titleSmall => textTheme.titleSmall?.copyWith(
    fontFamily: AppConstants.kFontConstant,
    fontWeight: FontWeight.w600,
    fontSize: 14,
    // color: Colors.black,
  );

  TextStyle? get titleMedium => textTheme.titleMedium?.copyWith(
    fontFamily: AppConstants.kFontConstant,
    fontWeight: FontWeight.w600,
    fontSize: 16,
    // color: Colors.black,
  );

  TextStyle? get titleLarge => textTheme.titleLarge?.copyWith(
    fontFamily: AppConstants.kFontConstant,
    fontWeight: FontWeight.w600,
    fontSize: 22,
    // color: Colors.black,
  );

  // headline
  TextStyle? get headlineSmall => textTheme.headlineSmall?.copyWith(
    fontFamily: AppConstants.kFontConstant,
    fontWeight: FontWeight.w700,
    fontSize: 24,
    // color: Colors.black,
  );

  TextStyle? get headlineMedium => textTheme.headlineMedium?.copyWith(
    fontFamily: AppConstants.kFontConstant,
    fontWeight: FontWeight.w700,
    fontSize: 28,
    // color: Colors.black,
  );

  TextStyle? get headlineLarge => textTheme.headlineLarge?.copyWith(
    fontFamily: AppConstants.kFontConstant,
    fontWeight: FontWeight.w700,
    fontSize: 32,
    // color: Colors.black,
  );

  // display
  TextStyle? get displaySmall => textTheme.displaySmall?.copyWith(
    fontFamily: AppConstants.kFontConstant,
    fontWeight: FontWeight.w400,
    fontSize: 36,
    // color: Colors.black,
  );

  TextStyle? get displayMedium => textTheme.displayMedium?.copyWith(
    fontFamily: AppConstants.kFontConstant,
    fontWeight: FontWeight.w400,
    fontSize: 45,
    // color: Colors.black,
  );

  TextStyle? get displayLarge => textTheme.displayLarge?.copyWith(
    fontFamily: AppConstants.kFontConstant,
    fontWeight: FontWeight.w400,
    fontSize: 57,
    // color: Colors.black,
  );
}
