import 'package:ahmerportfolio/constants/color_constant.dart';
import 'package:ahmerportfolio/constants/constant.dart';
import 'package:ahmerportfolio/theme/component_theme.dart';
import 'package:ahmerportfolio/theme/theme.dart';
import 'package:ahmerportfolio/theme/transition_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData getAppTheme(BuildContext context, {bool isDark = false}) => ThemeData(
  useMaterial3: true,
  cardColor: Colors.white,
  canvasColor: Colors.white,
  primaryColor: Colors.amber,
  dividerColor: Colors.amber,
  textTheme: Theme.of(context).textTheme
      .apply(
        bodyColor: isDark ? Colors.white : Colors.black,
        fontFamily: AppConstants.kFontConstant,
      )
      .copyWith(
        displayLarge: context.displayLarge?.copyWith(
          color: isDark ? Colors.white : Colors.black,
        ),
        displayMedium: context.displayMedium?.copyWith(
          color: isDark ? Colors.white : Colors.black,
        ),
        displaySmall: context.displaySmall?.copyWith(
          color: isDark ? Colors.white : Colors.black,
        ),
        headlineLarge: context.headlineLarge?.copyWith(
          color: isDark ? Colors.white : Colors.black,
        ),
        headlineMedium: context.headlineMedium?.copyWith(
          color: isDark ? Colors.white : Colors.black,
        ),
        headlineSmall: context.headlineSmall?.copyWith(
          color: isDark ? Colors.white : Colors.black,
        ),
        titleLarge: context.titleLarge?.copyWith(
          color: isDark ? Colors.white : Colors.black,
        ),
        titleMedium: context.titleMedium?.copyWith(
          color: isDark ? Colors.white : Colors.black,
        ),
        titleSmall: context.titleSmall?.copyWith(
          color: isDark ? Colors.white : Colors.black,
        ),
        labelLarge: context.labelLarge?.copyWith(
          color: isDark ? Colors.white : Colors.black,
        ),
        labelMedium: context.labelMedium?.copyWith(
          color: isDark ? Colors.white : Colors.black,
        ),
        labelSmall: context.labelSmall?.copyWith(
          color: isDark ? Colors.white : Colors.black,
        ),
        bodyLarge: context.bodyLarge?.copyWith(
          color: isDark ? Colors.white : Colors.black,
        ),
        bodyMedium: context.bodyMedium?.copyWith(
          color: isDark ? Colors.white : Colors.black,
        ),
        bodySmall: context.bodySmall?.copyWith(
          color: isDark ? Colors.white : Colors.black,
        ),
      ),

  // themes
  // cardTheme: ComponentThemeV2.cardTheme,
  iconTheme: ComponentThemeV2.iconTheme,
  // badgeTheme: ComponentThemeV2.badgeTheme,
  // radioTheme: ComponentThemeV2.radioTheme,
  // sliderTheme: ComponentThemeV2.sliderTheme,
  dividerTheme: ComponentThemeV2.dividerTheme,
  // checkboxTheme: ComponentThemeV2.checkboxTheme,
  // scaffoldBackgroundColor: ThemeColor.background,
  // bottomSheetTheme: ComponentThemeV2.bottomSheetTheme,
  // cupertinoOverrideTheme: ComponentThemeV2.cupertinoThemeData,
  pageTransitionsTheme: ComponentThemeV2.pageTransitionsTheme,
  // bottomNavigationBarTheme: ComponentThemeV2.bottomNavigationBarTheme,
  // floatingActionButtonTheme: ComponentThemeV2.floatingActionButtonTheme,

  // themes using context
  appBarTheme: ComponentThemeV2.appBarTheme(context),
  // dialogTheme: ComponentThemeV2.dialogTheme(context),
  // listTileTheme: ComponentThemeV2.listTileTheme(context),
  searchBarTheme: ComponentThemeV2.searchBarTheme(context),
  outlinedButtonTheme: ComponentThemeV2.outlinedButtonTheme(context),
  elevatedButtonTheme: ComponentThemeV2.elevatedButtonTheme(context),
  inputDecorationTheme: ComponentTheme.inputDecorationTheme,

  iconButtonTheme: ComponentTheme.iconButtonTheme,
  textButtonTheme: ComponentTheme.textButtonTheme,
  bottomSheetTheme: ComponentTheme.bottomsheetTheme,
  chipTheme: ChipThemeData(
    backgroundColor: ColorConstant.primary,
    deleteIconColor: ColorConstant.whiteColor,
    iconTheme: IconThemeData(size: 10.sp),
    labelStyle: context.bodyLarge!.copyWith(
      color: ColorConstant.whiteColor,
      fontSize: 10.sp,
    ),
  ),

  // colorScheme
  colorScheme:
      isDark
          ? const ColorScheme.dark(
            primary: Colors.white,

            secondary: ColorConstant.yellow,
            tertiary: ColorConstant.bgColorLight,
            error: ColorConstant.yellow,
            surface: ColorConstant.bgColorDark,
            surfaceTint: ColorConstant.primary,
          )
          : const ColorScheme.light(
            primary: ColorConstant.primary,
            secondary: ColorConstant.secondary,
            tertiary: ColorConstant.bgColorDark,
            error: ColorConstant.error,
            surface: ColorConstant.bgColorLight, // bg color
            surfaceTint: Colors.transparent,
          ),
);

class ComponentThemeV2 {
  static IconThemeData iconTheme = IconThemeData(
    color: ColorConstant.primary,
    size: 24.r,
  );

  static DividerThemeData dividerTheme = DividerThemeData(
    color: ColorConstant.divider,
    endIndent: 30.w,
    indent: 30.w,
  );

  static AppBarTheme appBarTheme(BuildContext context) => AppBarTheme(
    titleSpacing: 30.w,

    titleTextStyle: context.titleLarge?.copyWith(fontSize: 20.sp),
  );

  ListTileThemeData listTileTheme(BuildContext context) =>
      ListTileThemeData(contentPadding: EdgeInsets.symmetric(horizontal: 20.w));

  static SearchBarThemeData? searchBarTheme(BuildContext context) =>
      SearchBarThemeData(
        backgroundColor: const WidgetStatePropertyAll(ColorConstant.secondary),
        shadowColor: WidgetStatePropertyAll(Colors.grey.withOpacity(0.3)),
        elevation: const WidgetStatePropertyAll(5),
        padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 21.w)),
        textStyle: WidgetStatePropertyAll(
          context.bodyLarge?.copyWith(color: ColorConstant.disable),
        ),
      );

  static inputDecorationTheme(BuildContext context) => InputDecorationTheme(
    filled: true,
    isDense: true,
    fillColor: ColorConstant.input,
    prefixIconColor: ColorConstant.primary,
    suffixIconColor: ColorConstant.primary,
    floatingLabelBehavior: FloatingLabelBehavior.never,
    hintStyle: TextStyle(
      fontFamily: AppConstants.kFontConstant,
      color: ColorConstant.hintColor,
      fontWeight: FontWeight.w400,
      fontSize: 14.sp,
    ),
    errorStyle: TextStyle(
      fontFamily: AppConstants.kFontConstant,
      fontWeight: FontWeight.w400,
      color: ColorConstant.error,
      fontSize: 12.sp,
    ),
    labelStyle: TextStyle(
      fontFamily: AppConstants.kFontConstant,
      color: ColorConstant.disable,
      fontWeight: FontWeight.w400,
      fontSize: 14.sp,
    ),
    floatingLabelStyle: TextStyle(
      fontFamily: AppConstants.kFontConstant,
      fontWeight: FontWeight.w400,
      fontSize: 16.sp,
    ),
    border: OutlineInputBorder(
      borderSide: const BorderSide(color: ColorConstant.input),
      borderRadius: BorderRadius.circular(50),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: ColorConstant.error),
      borderRadius: BorderRadius.circular(50),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: ColorConstant.input),
      borderRadius: BorderRadius.circular(50),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: ColorConstant.error),
      borderRadius: BorderRadius.circular(50),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: ColorConstant.primary),
      borderRadius: BorderRadius.circular(50),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: ColorConstant.input),
      borderRadius: BorderRadius.circular(50),
    ),
  );

  static elevatedButtonTheme(BuildContext context) => ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      // minimumSize: Size.fromHeight(56.h),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      backgroundColor: ColorConstant.primary,
      foregroundColor: ColorConstant.secondary,
      textStyle: TextStyle(
        fontFamily: AppConstants.kFontConstant,
        color: ColorConstant.secondary,
        fontWeight: FontWeight.w700,
        fontSize: 20.sp,
      ),
    ),
  );

  static outlinedButtonTheme(BuildContext context) => OutlinedButtonThemeData(
    style: ElevatedButton.styleFrom(
      minimumSize: Size.fromHeight(56.h),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
        side: const BorderSide(color: ColorConstant.secondary, width: 2),
      ),
      // backgroundColor: ColorConstant.primary,
      foregroundColor: ColorConstant.secondary,
      textStyle: TextStyle(
        fontFamily: AppConstants.kFontConstant,
        color: ColorConstant.secondary,
        fontWeight: FontWeight.w700,
        fontSize: 20,
      ),
    ),
  );

  static PageTransitionsTheme pageTransitionsTheme = PageTransitionsTheme(
    builders: {
      TargetPlatform.android: FadePageTransitionsBuilder(),
      TargetPlatform.iOS: FadePageTransitionsBuilder(),
    },
  );
}
