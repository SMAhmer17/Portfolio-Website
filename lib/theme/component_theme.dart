
// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:ahmerportfolio/constants/color_constant.dart';
import 'package:ahmerportfolio/constants/constant.dart';
import 'package:flutter/material.dart';

class ComponentTheme {
  //================ Appbar Theme Start =================
  static AppBarTheme appBarTheme = const AppBarTheme(
      backgroundColor: Color(0xff242429),
      elevation: 0,
      centerTitle: false,
      toolbarHeight: 70);

  //================ Appbar Theme End =================
  //================ Indicator Theme Start =================
  static ProgressIndicatorThemeData progressIndicatorTheme =
      const ProgressIndicatorThemeData(
    color: ColorConstant.secondary,
    circularTrackColor: Color(0xffD9D9D9),
  );

//================ Indicator Theme end =================
//================ BottomSheet Theme Start =================
  static BottomSheetThemeData bottomsheetTheme = const BottomSheetThemeData(
    dragHandleColor: Color(0xffE9E9E9),
    showDragHandle: true,
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
  );

//================ BottomSheet Theme End =================

  static TimePickerThemeData timePickerTheme = const TimePickerThemeData(
    elevation: 10,
    entryModeIconColor: Colors.yellow,
    backgroundColor: Colors.red,
    hourMinuteShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
  );

  static CheckboxThemeData checkboxThemeData = CheckboxThemeData(
    checkColor: WidgetStateProperty.all(Colors.black),
    side: const BorderSide(color: ColorConstant.disabledTextColor),
  );

  static RadioThemeData radioThemeData = RadioThemeData(
      fillColor: WidgetStateProperty.resolveWith<Color>((states) {
    if (states.contains(WidgetState.selected)) {
      return ColorConstant.primary;
    } else {
      return ColorConstant.darkGrey;
    }
  }));

  // ================== TextForm Decoration Start ===================
  static InputDecorationTheme inputDecorationTheme =  InputDecorationTheme(
    // floatingLabelBehavior: FloatingLabelBehavior.always,
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    hintStyle: TextStyle(
      fontFamily: AppConstants.kFontConstant,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: ColorConstant.hintColor,
    ),
    errorStyle: TextStyle(
        fontFamily: AppConstants.kFontConstant,
        fontWeight: FontWeight.w400,
        fontSize: 12,
        color: ColorConstant.error),
    labelStyle: TextStyle(
      fontFamily: AppConstants.kFontConstant,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: ColorConstant.darkGrey,
    ),
    floatingLabelStyle: TextStyle(
      fontFamily: AppConstants.kFontConstant,
      fontWeight: FontWeight.w400,
      fontSize: 16,
    ),
    isDense: true,
    filled: true,
    fillColor: Colors.transparent,
    border: InputBorder.none,
    // OutlineInputBorder(
    //   borderSide: const BorderSide(color: ColorConstant.disabledColor),
    //   borderRadius: BorderRadius.circular(50),
    // ),
    errorBorder: InputBorder.none,
    // OutlineInputBorder(
    //   borderSide: const BorderSide(color: ColorConstant.error),
    //   borderRadius: BorderRadius.circular(50),
    // ),
    enabledBorder: InputBorder.none,
    // OutlineInputBorder(
    //   borderSide: const BorderSide(color: ColorConstant.disabledColor),
    //   borderRadius: BorderRadius.circular(50),
    // ),
    focusedErrorBorder: InputBorder.none,
    // OutlineInputBorder(
    //   borderSide: const BorderSide(color: ColorConstant.error),
    //   borderRadius: BorderRadius.circular(50),
    // ),
    focusedBorder: InputBorder.none,
    // OutlineInputBorder(
    //   borderSide: const BorderSide(color: ColorConstant.primary),
    //   borderRadius: BorderRadius.circular(50),
    // ),
    disabledBorder: InputBorder.none,
    //  OutlineInputBorder(
    //   borderSide: const BorderSide(color: ColorConstant.disabledColor),
    //   borderRadius: BorderRadius.circular(50),
    // ),
  );

  // ================== TextForm Decoration End ===================

  static const CardTheme cardTheme = CardTheme(
    color: ColorConstant.whiteColor,
    elevation: 0,
  );

  //================ Button Theme Data Start =================
  static final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(56),
        // maximumSize: const Size.fromHeight(45),
        // padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        backgroundColor: ColorConstant.primary,
        textStyle: TextStyle(
          fontFamily: AppConstants.kFontConstant,
          color: ColorConstant.secondary,
          fontWeight: FontWeight.w700,
          fontSize: 20,
        )),
  );

  static final fillButtonThemeData = FilledButtonThemeData(
    style: FilledButton.styleFrom(
      backgroundColor: ColorConstant.primary,
      minimumSize: const Size.fromHeight(40),
      padding: const EdgeInsets.symmetric(vertical: 18),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
    ),
  );

  static final outlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      minimumSize: const Size.fromHeight(40),
      padding: const EdgeInsets.symmetric(vertical: 18),
      foregroundColor: ColorConstant.primary,
      surfaceTintColor: ColorConstant.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      side: const BorderSide(
        color: Color(0xff303030),
        width: 1.5,
      ),
    ),
  );

  static final textButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      backgroundColor: ColorConstant.primary,
      textStyle:  TextStyle(
        fontSize: 16,
        decoration: TextDecoration.underline,
        decorationColor: ColorConstant.primary,
        fontWeight: FontWeight.w600,
        color: ColorConstant.primary,
        fontFamily: AppConstants.kFontConstant,
      ),
    ),
  );

  static final iconButtonTheme = IconButtonThemeData(
    style: IconButton.styleFrom(
      backgroundColor: ColorConstant.primary,
      foregroundColor: Colors.white,
    ),
  );

//================ Button Theme Data End =================
}
